defmodule Mix.Tasks.GenerateHello do
  @moduledoc """
  Downloads a Swagger/OpenAPI specification file and generates an Elixir API client.

  ## Usage

      mix generate_hello [URL]
  """
  use Mix.Task
  require EEx

  @shortdoc "Generates an Elixir API client from Swagger/OpenAPI spec"

  @template_dir "lib/templates"

  def run(args) do
    # Start Finch
    {:ok, _} = Finch.start_link(name: Req.Finch)

    # Clean up existing generated code
    File.rm_rf!("lib/generated")
    File.mkdir_p!("lib/generated")

    # Default URL if no argument is provided
    url = List.first(args) || "https://developer.shortcut.com/api/rest/v3/shortcut.swagger.json"

    Mix.shell().info("Downloading Swagger file from: #{url}") 

    with {:ok, %{status: 200, body: body}} <- Req.get(url),
         {:ok, spec} <- parse_spec(body),
         :ok <- create_output_dir(),
         :ok <- generate_client(spec) do
      Mix.shell().info("Successfully generated API client")
    else
      {:ok, %{status: status}} ->
        Mix.shell().error("Failed to download. Status code: #{status}")

      {:error, reason} ->
        Mix.shell().error("Generation failed: #{inspect(reason)}")
    end
  end

  defp parse_spec(body) when is_map(body), do: {:ok, body}

  defp parse_spec(body) when is_binary(body) do
    case Jason.decode(body) do
      {:ok, parsed} -> {:ok, parsed}
      error -> error
    end
  end

  defp create_output_dir do
    File.mkdir_p("lib/generated")
  end

  defp generate_client(spec) do
    # Generate structs from definitions
    definitions = Map.get(spec, "definitions", %{})
    Enum.each(definitions, fn {name, schema} ->
      generate_struct(name, schema)
    end)

    # Generate API client functions from paths
    paths = Map.get(spec, "paths", %{})
    generate_api_client(paths)

    :ok
  end

  defp generate_api_client(paths) do
    # Generate the behavior module
    behavior_content = """
    defmodule Generated.ApiClientBehavior do
      @moduledoc \"\"\"
      Behavior specification for the generated API client
      \"\"\"

      @type token :: String.t()

      #{Enum.map_join(paths, "\n\n", &generate_behavior_callbacks/1)}
    end
    """

    # Generate the implementation module
    impl_content = """
    defmodule Generated.ApiClient do
      @moduledoc \"\"\"
      Generated API client functions
      \"\"\"

      alias ShortcutApi.ApiHelpers
      @behaviour Generated.ApiClientBehavior

      #{Enum.map_join(paths, "\n\n", &generate_endpoint_functions/1)}
    end
    """

    File.write!("lib/generated/api_client_behavior.ex", behavior_content)
    File.write!("lib/generated/api_client.ex", impl_content)
    
    # Format the generated files
    Mix.Task.run("format", ["lib/generated/api_client_behavior.ex"])
    Mix.Task.run("format", ["lib/generated/api_client.ex"])
  end

  defp generate_endpoint_functions({path, methods}) do
    Enum.map_join(methods, "\n\n", fn {method, details} ->
      function_name = get_function_name(method, path)
      params = get_parameters(details)
      docs = details["description"] || "#{String.upcase(method)} #{path}"

      """
        @doc \"\"\"
        #{docs}
        \"\"\"
        def #{function_name}(token#{params.arg_list}) do
          ApiHelpers.make_request(
            :#{method},
            "#{String.replace(path, "{", "\#{")}", 
            token#{params.request_params}
          )
        end
      """
    end)
  end

  defp get_function_name(method, path) do
    path
    |> String.split("/")
    |> Enum.reject(&(&1 == ""))
    |> Enum.map(&String.replace(&1, ~r/{.*}/, ""))
    |> Enum.join("_")
    |> then(&"#{method}_#{&1}")
    |> Macro.underscore()
  end

  defp get_parameters(details) do
    params = Map.get(details, "parameters", [])
    
    arg_list = 
      params
      |> Enum.map(fn param -> 
        ", #{param["name"]}" 
      end)
      |> Enum.join("")

    request_params =
      params
      |> Enum.map(fn param ->
        case param["in"] do
          "body" -> ", json: #{param["name"]}"
          "query" -> ", params: #{param["name"]}"
          _ -> ""
        end
      end)
      |> Enum.join("")

    %{arg_list: arg_list, request_params: request_params}
  end

  defp generate_struct(name, schema) do
    module_name = "Generated.Models.#{Macro.camelize(name)}"
    properties = Map.get(schema, "properties", %{})

    fields =
      properties
      |> Enum.map(fn {field_name, field_schema} ->
        type = get_field_type(field_schema)
        sanitized_name = String.replace(field_name, "-", "_")
        original_name = field_name
        {sanitized_name, type, field_schema["description"], original_name}
      end)

    # Handle empty properties case
    fields = if Enum.empty?(fields), do: [{"id", "String.t()", "Identifier"}], else: fields

    docs = schema["description"] || "Generated struct for #{name}"

    content = """
    defmodule #{module_name} do
      @moduledoc \"""
      #{String.trim(docs)}
      \"""

      @type t :: %__MODULE__{
        #{Enum.map_join(fields, ",\n        ", fn {sanitized_name, type, _, _} -> "#{sanitized_name}: #{type}" end)}
      }

      defstruct [#{Enum.map_join(fields, ", ", fn {sanitized_name, _, _, _} -> ":#{sanitized_name}" end)}]

      #{Enum.map_join(fields, "\n\n", fn {sanitized_name, _, desc, _} -> """
      @doc \"""
      #{desc || "Field #{sanitized_name}"}
      \"""
      def #{sanitized_name}(%__MODULE__{#{sanitized_name}: value}), do: value
      """ end)}
    end
    """

    # Create nested directory structure based on module name
    path =
      module_name
      |> String.split(".")
      |> Enum.map(&Macro.underscore/1)
      |> Enum.join("/")

    file_path = "lib/#{path}.ex"
    dir = Path.dirname(file_path)
    File.mkdir_p!(dir)
    File.write!(file_path, content)
    Mix.Task.run("format", [file_path])
  end

  defp get_field_type(%{"type" => "string"}), do: "String.t()"
  defp get_field_type(%{"type" => "integer"}), do: "integer()"
  defp get_field_type(%{"type" => "number"}), do: "float()"
  defp get_field_type(%{"type" => "boolean"}), do: "boolean()"

  defp get_field_type(%{"type" => "array", "items" => items}),
    do: "list(#{get_field_type(items)})"

  defp get_field_type(%{"$ref" => ref}) do
    type =
      ref
      |> String.replace("#/definitions/", "")
      |> Macro.camelize()

    "Generated.Models.#{type}.t()"
  end

  defp get_field_type(_), do: "any()"

  defp generate_behavior_callbacks({path, methods}) do
    Enum.map_join(methods, "\n\n", fn {method, details} ->
      function_name = get_function_name(method, path)
      
      args = ["token :: token()" | 
        details
        |> Map.get("parameters", [])
        |> Enum.map(fn param -> 
          # Convert parameter name from hyphenated to underscore
          param_name = String.replace(param["name"], "-", "_")
          type = case param["type"] do
            "integer" -> "integer()"
            "string" -> "String.t()"
            "boolean" -> "boolean()"
            "array" -> "list()"
            "object" -> "map()"
            _ -> "any()"
          end
          "#{param_name} :: #{type}"
        end)
      ]

      """
      @callback #{function_name}(#{Enum.join(args, ", ")}) ::
        {:ok, map()} | {:error, any()}
      """
    end)
  end
end
