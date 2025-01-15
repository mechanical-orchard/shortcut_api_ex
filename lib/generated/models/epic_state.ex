defmodule Generated.Models.EpicState do
  @moduledoc """
  Epic State is any of the at least 3 columns. Epic States correspond to one of 3 types: Unstarted, Started, or Done.
  """

  @type t :: %__MODULE__{
    color: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        global_id: String.t(),
        id: integer(),
        name: String.t(),
        position: integer(),
        type: String.t(),
        updated_at: String.t()
  }

  defstruct [:color, :created_at, :description, :entity_type, :global_id, :id, :name, :position, :type, :updated_at]

  @doc """
The hex color for this Epic State.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The time/date the Epic State was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The description of what sort of Epics belong in that Epic State.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The unique ID of the Epic State.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The Epic State's name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The position that the Epic State is in, starting with 0 at the left.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
The type of Epic State (Unstarted, Started, or Done)
"""
def type(%__MODULE__{type: value}), do: value


@doc """
When the Epic State was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
