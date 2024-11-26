defmodule ShortcutApi.Projects do
  import ShortcutApi.ApiHelpers

  @moduledoc """
  API wrapper for Shortcut Projects endpoints.

  All functions require a valid Shortcut API token.
  """

  @type token :: String.t()
  @type project_id :: pos_integer()
  @type response :: {:ok, map() | list(map())} | {:error, any()}

  @doc """
  Lists all projects.

  ## Parameters
    * `token` - Shortcut API token

  ## Examples

      iex> ShortcutApi.Projects.list_projects("token")
      {:ok, [%{id: 12345, name: "Project name"}, ...]}

  """
  @spec list_projects(token()) :: response()
  def list_projects(token) when is_binary(token) do
    make_request(:get, "/projects", token)
  end

  @doc """
  Retrieves a single project by ID.

  ## Parameters
    * `token` - Shortcut API token
    * `project_id` - The ID of the project to retrieve

  ## Examples

      iex> ShortcutApi.Projects.get_project("token", 12345)
      {:ok, %{id: 12345, name: "Project name"}}

  """
  @spec get_project(token(), project_id()) :: response()
  def get_project(token, project_id)
      when is_binary(token) and is_integer(project_id) and project_id > 0 do
    make_request(:get, "/projects/#{project_id}", token)
  end

  @doc """
  Creates a new project.

  ## Parameters
    * `token` - Shortcut API token
    * `params` - Map containing the project parameters

  ## Required params
    * `:name` - Project name

  ## Examples

      iex> params = %{name: "New Project"}
      iex> ShortcutApi.Projects.create_project("token", params)
      {:ok, %{id: 12345, name: "New Project"}}

  """
  @spec create_project(token(), map()) :: response()
  def create_project(token, params) when is_binary(token) and is_map(params) do
    with :ok <- validate_required(params, [:name]) do
      make_request(:post, "/projects", token, json: params)
    end
  end

  @doc """
  Updates an existing project.

  ## Parameters
    * `token` - Shortcut API token
    * `project_id` - The ID of the project to update
    * `params` - Map containing the update parameters

  ## Examples

      iex> params = %{name: "Updated Project Name"}
      iex> ShortcutApi.Projects.update_project("token", 12345, params)
      {:ok, %{id: 12345, name: "Updated Project Name"}}

  """
  @spec update_project(token(), project_id(), map()) :: response()
  def update_project(token, project_id, params)
      when is_binary(token) and is_integer(project_id) and project_id > 0 and is_map(params) do
    make_request(:put, "/projects/#{project_id}", token, json: params)
  end

  @doc """
  Deletes a project.

  ## Parameters
    * `token` - Shortcut API token
    * `project_id` - The ID of the project to delete

  ## Examples

      iex> ShortcutApi.Projects.delete_project("token", 12345)
      {:ok, %{}}

  """
  @spec delete_project(token(), project_id()) :: response()
  def delete_project(token, project_id)
      when is_binary(token) and is_integer(project_id) and project_id > 0 do
    make_request(:delete, "/projects/#{project_id}", token)
  end
end
