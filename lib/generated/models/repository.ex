defmodule Generated.Models.Repository do
  @moduledoc """
  Repository refers to a VCS repository.
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        entity_type: String.t(),
        external_id: String.t(),
        full_name: String.t(),
        id: integer(),
        name: String.t(),
        type: String.t(),
        updated_at: String.t(),
        url: String.t()
  }

  defstruct [:created_at, :entity_type, :external_id, :full_name, :id, :name, :type, :updated_at, :url]

  @doc """
The time/date the Repository was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The VCS unique identifier for the Repository.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The full name of the VCS repository.
"""
def full_name(%__MODULE__{full_name: value}), do: value


@doc """
The ID associated to the VCS repository in Shortcut.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The shorthand name of the VCS repository.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The VCS provider for the Repository.
"""
def type(%__MODULE__{type: value}), do: value


@doc """
The time/date the Repository was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The URL of the Repository.
"""
def url(%__MODULE__{url: value}), do: value

end
