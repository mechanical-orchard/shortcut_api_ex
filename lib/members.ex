defmodule ShortcutApi.Members do
  import ShortcutApi.ApiHelpers

  @behaviour ShortcutApi.MembersBehavior
  @moduledoc """
  API wrapper for Shortcut Members endpoints.
  See: https://developer.shortcut.com/api/rest/v3#Member

  All functions require a valid Shortcut API token.
  """

  @type token :: String.t()
  @type response :: {:ok, map() | list(map())} | {:error, any()}

  @doc """
  Gets information about the currently authenticated member.

  ## Parameters
    * `token` - Shortcut API token

  ## Examples

      iex> ShortcutApi.Members.get_current_member("token")
      {:ok, %{id: "12345678-9012-3456-7890-123456789012", name: "Member Name"}}

  """
  @spec get_current_member(token()) :: response()
  def get_current_member(token) when is_binary(token) do
    make_request(:get, "/member", token)
  end
end

defmodule ShortcutApi.MembersBehavior do
  @moduledoc """
  A behaviour for interacting with Shortcut Members API endpoints.

  This module defines the required callbacks for operations related to members.
  Implementations of this behaviour must provide the necessary logic to handle
  interactions with the Shortcut API.

  All callbacks require a valid Shortcut API token.
  """

  @callback get_current_member(String.t()) :: {:ok, map()} | {:error, any()}
end
