defmodule ShortcutApi.Stories do
  @behaviour ShortcutApi.StoriesBehavior
  import ShortcutApi.ApiHelpers

  @moduledoc """
  API wrapper for Shortcut Stories endpoints.
  See: https://developer.shortcut.com/api/rest/v3#Stories

  All functions require a valid Shortcut API token.
  """

  @type token :: String.t()
  @type story_id :: pos_integer()
  @type response :: {:ok, map() | list(map())} | {:error, any()}

  @doc """
  Retrieves a single story by ID.

  ## Parameters
    * `token` - Shortcut API token
    * `story_id` - The ID of the story to retrieve

  ## Examples

      iex> ShortcutApi.Stories.get_story("token", 12345)
      {:ok, %{id: 12345, name: "Story name"}}

  """
  @spec get_story(token(), story_id()) :: response()
  def get_story(token, story_id)
      when is_binary(token) and is_integer(story_id) and story_id > 0 do
    make_request(:get, "/stories/#{story_id}", token)
  end

  @doc """
  Creates a new story.

  ## Parameters
    * `token` - Shortcut API token
    * `params` - Map containing the story parameters

  ## Required params
    * `:name` - Story name
    * `:project_id` - Project ID

  ## Examples

      iex> params = %{name: "New Story", project_id: 123}
      iex> ShortcutApi.Stories.create_story("token", params)
      {:ok, %{id: 12345, name: "New Story"}}

  """
  @spec create_story(token(), map()) :: response()
  def create_story(token, params) when is_binary(token) and is_map(params) do
    with :ok <- validate_required(params, [:name, :project_id]) do
      make_request(:post, "/stories", token, json: params)
    end
  end

  @doc """
  Updates an existing story.

  ## Parameters
    * `token` - Shortcut API token
    * `story_id` - The ID of the story to update
    * `params` - Map containing the update parameters

  ## Examples

      iex> params = %{name: "Updated Story Name"}
      iex> ShortcutApi.Stories.update_story("token", 12345, params)
      {:ok, %{id: 12345, name: "Updated Story Name", ...}}

  """
  @spec update_story(token(), story_id(), map()) :: response()
  def update_story(token, story_id, params)
      when is_binary(token) and is_integer(story_id) and story_id > 0 and is_map(params) do
    make_request(:put, "/stories/#{story_id}", token, json: params)
  end

  @doc """
  Deletes a story.

  ## Parameters
    * `token` - Shortcut API token
    * `story_id` - The ID of the story to delete

  ## Examples

      iex> ShortcutApi.Stories.delete_story("token", 12345)
      {:ok, %{}}

  """
  @spec delete_story(token(), story_id()) :: response()
  def delete_story(token, story_id)
      when is_binary(token) and is_integer(story_id) and story_id > 0 do
    make_request(:delete, "/stories/#{story_id}", token)
  end
end

defmodule ShortcutApi.StoriesBehavior do
  @callback get_story(token :: String.t(), story_id :: pos_integer()) ::
              {:ok, map() | list(map())} | {:error, any()}

  @callback create_story(token :: String.t(), params :: map()) ::
              {:ok, map() | list(map())} | {:error, any()}

  @callback update_story(token :: String.t(), story_id :: pos_integer(), params :: map()) ::
              {:ok, map() | list(map())} | {:error, any()}

  @callback delete_story(token :: String.t(), story_id :: pos_integer()) ::
              {:ok, map() | list(map())} | {:error, any()}
end
