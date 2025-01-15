defmodule Generated.Models.HistoryActionLabelUpdate do
  @moduledoc """
  An action representing a Label being updated.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        entity_type: String.t(),
        id: integer()
  }

  defstruct [:action, :entity_type, :id]

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

end
