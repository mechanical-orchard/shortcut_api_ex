defmodule ShortcutApi.ApiHelpers do
  @moduledoc """
  Helper functions for making API requests and validating data.
  """

  def make_request(method, endpoint, token, opts \\ []) do
    url = base_url() <> endpoint
    headers = headers(token)

    try do
      response =
        Req.new(base_url: url)
        |> Req.Request.put_headers(headers)
        |> Req.request!([method: method] ++ opts)

      {:ok, response.body}
    rescue
      e in Req.Error ->
        {:error, %{reason: e.reason, response: e.response}}
    end
  end

  def base_url do
    Application.get_env(:shortcut_api, :base_url, "https://api.app.shortcut.com/api/v3")
  end

  def headers(token) do
    [
      {"Shortcut-Token", token},
      {"Content-Type", "application/json"}
    ]
  end

  def validate_required(params, required_fields) do
    fields_present =
      required_fields
      |> Enum.map(fn field ->
        to_string(field)
      end)
      |> Enum.all?(fn field ->
        Map.has_key?(params, field) || Map.has_key?(params, String.to_atom(field))
      end)

    case fields_present do
      true -> :ok
      false -> {:error, "Missing required fields: #{inspect(required_fields)}"}
    end
  end
end
