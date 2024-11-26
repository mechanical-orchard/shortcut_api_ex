defmodule ShortcutApi.Epics do
  import ShortcutApi.ApiHelpers

  @moduledoc """
  API wrapper for Shortcut Epics endpoints.

  All functions require a valid Shortcut API token.
  """

  @type token :: String.t()
  @type epic_id :: pos_integer()
  @type response :: {:ok, map() | list(map())} | {:error, any()}

  @doc """
  Retrieves a single epic by ID.

  ## Parameters
    * `token` - Shortcut API token
    * `epic_id` - The ID of the epic to retrieve

  ## Examples

      iex> ShortcutApi.Epics.get_epic("token", 12345)
      {:ok, %{id: 12345, name: "Epic name"}}

  """
  @spec get_epic(token(), epic_id()) :: response()
  def get_epic(token, epic_id)
      when is_binary(token) and is_integer(epic_id) and epic_id > 0 do
    make_request(:get, "/epics/#{epic_id}", token)
  end

  @doc """
  Creates a new epic.

  ## Parameters
    * `token` - Shortcut API token
    * `params` - Map containing the epic parameters

  ## Required params
    * `:name` - Epic name
    * `:workflow_state_id` - The ID of the workflow state

  ## Examples

      iex> params = %{name: "New Epic", workflow_state_id: 123}
      iex> ShortcutApi.Epics.create_epic("token", params)
      {:ok, %{id: 12345, name: "New Epic"}}

  """
  @spec create_epic(token(), map()) :: response()
  def create_epic(token, params) when is_binary(token) and is_map(params) do
    with :ok <- validate_required(params, [:name, :workflow_state_id]) do
      make_request(:post, "/epics", token, json: params)
    end
  end

  @doc """
  Updates an existing epic.

  ## Parameters
    * `token` - Shortcut API token
    * `epic_id` - The ID of the epic to update
    * `params` - Map containing the update parameters

  ## Examples

      iex> params = %{name: "Updated Epic Name"}
      iex> ShortcutApi.Epics.update_epic("token", 12345, params)
      {:ok, %{id: 12345, name: "Updated Epic Name", ...}}

  """
  @spec update_epic(token(), epic_id(), map()) :: response()
  def update_epic(token, epic_id, params)
      when is_binary(token) and is_integer(epic_id) and epic_id > 0 and is_map(params) do
    make_request(:put, "/epics/#{epic_id}", token, json: params)
  end

  @doc """
  Deletes an epic.

  ## Parameters
    * `token` - Shortcut API token
    * `epic_id` - The ID of the epic to delete

  ## Examples

      iex> ShortcutApi.Epics.delete_epic("token", 12345)
      {:ok, %{}}

  """
  @spec delete_epic(token(), epic_id()) :: response()
  def delete_epic(token, epic_id)
      when is_binary(token) and is_integer(epic_id) and epic_id > 0 do
    make_request(:delete, "/epics/#{epic_id}", token)
  end

  @doc """
  Lists all epics.

  ## Parameters
    * `token` - Shortcut API token

  ## Examples

      iex> ShortcutApi.Epics.list_epics("token")
      {:ok, [%{id: 12345, name: "Epic name"}, ...]}

  """
  @spec list_epics(token()) :: response()
  def list_epics(token) when is_binary(token) do
    make_request(:get, "/epics", token)
  end

  @doc """
  Get the epic workflow state.

  ## Parameters
    * `token` - Shortcut API token

  ## Examples

      iex> ShortcutApi.Epics.get_epic_workflow("token")
      {:ok, %{states: [%{id: 123, name: "In Progress"}, ...]}}

  """
  @spec get_epic_workflow(token()) :: response()
  def get_epic_workflow(token) when is_binary(token) do
    make_request(:get, "/epic-workflow", token)
  end

  @doc """
  Get statistics for a specific epic.

  ## Parameters
    * `token` - Shortcut API token
    * `epic_id` - The ID of the epic to get stats for

  ## Examples

      iex> ShortcutApi.Epics.get_epic_stats("token", 12345)
      {:ok, %{num_points: 10, num_stories: 5, ...}}

  """
  @spec get_epic_stats(token(), epic_id()) :: response()
  def get_epic_stats(token, epic_id)
      when is_binary(token) and is_integer(epic_id) and epic_id > 0 do
    make_request(:get, "/epics/#{epic_id}/stats", token)
  end

  @doc """
  Get details about a specific epic state.

  ## Parameters
    * `token` - Shortcut API token
    * `state_id` - The ID of the epic state to retrieve

  ## Examples

      iex> ShortcutApi.Epics.get_epic_state("token", 12345)
      {:ok, %{id: 12345, name: "In Progress", ...}}

  """
  @spec get_epic_state(token(), pos_integer()) :: response()
  def get_epic_state(token, state_id)
      when is_binary(token) and is_integer(state_id) and state_id > 0 do
    make_request(:get, "/epic-workflow/states/#{state_id}", token)
  end
end
