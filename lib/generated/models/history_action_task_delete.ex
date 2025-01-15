defmodule Generated.Models.HistoryActionTaskDelete do
  @moduledoc """
  An action representing a Task being deleted.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        description: String.t(),
        entity_type: String.t(),
        id: integer()
  }

  defstruct [:action, :description, :entity_type, :id]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The description of the Task being deleted.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value

end
