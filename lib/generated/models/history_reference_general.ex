defmodule Generated.Models.HistoryReferenceGeneral do
  @moduledoc """
  A default reference for entity types that don't have extra fields.
  """

  @type t :: %__MODULE__{
    entity_type: String.t(),
        id: any(),
        name: String.t()
  }

  defstruct [:entity_type, :id, :name]

  @doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the entity referenced.
"""
def name(%__MODULE__{name: value}), do: value

end
