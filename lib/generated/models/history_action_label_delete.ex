defmodule Generated.Models.HistoryActionLabelDelete do
  @moduledoc """
  An action representing a Label being deleted.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        entity_type: String.t(),
        id: integer(),
        name: String.t()
  }

  defstruct [:action, :entity_type, :id, :name]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the Label.
"""
def name(%__MODULE__{name: value}), do: value

end
