defmodule Generated.Models.Icon do
  @moduledoc """
  Icons are used to attach images to Groups, Workspaces, Members, and Loading screens in the Shortcut web application.
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        entity_type: String.t(),
        id: String.t(),
        updated_at: String.t(),
        url: String.t()
  }

  defstruct [:created_at, :entity_type, :id, :updated_at, :url]

  @doc """
The time/date that the Icon was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique ID of the Icon.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The time/date that the Icon was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The URL of the Icon.
"""
def url(%__MODULE__{url: value}), do: value

end
