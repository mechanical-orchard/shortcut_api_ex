defmodule Generated.Models.Category do
  @moduledoc """
  A Category can be used to associate Objectives.
  """

  @type t :: %__MODULE__{
    archived: boolean(),
        color: String.t(),
        created_at: String.t(),
        entity_type: String.t(),
        external_id: String.t(),
        global_id: String.t(),
        id: integer(),
        name: String.t(),
        type: String.t(),
        updated_at: String.t()
  }

  defstruct [:archived, :color, :created_at, :entity_type, :external_id, :global_id, :id, :name, :type, :updated_at]

  @doc """
A true/false boolean indicating if the Category has been archived.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The hex color to be displayed with the Category (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The time/date that the Category was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Category has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The Global ID of the Category.
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The unique ID of the Category.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the Category.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The type of entity this Category is associated with; currently Milestone or Objective is the only type of Category.
"""
def type(%__MODULE__{type: value}), do: value


@doc """
The time/date that the Category was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
