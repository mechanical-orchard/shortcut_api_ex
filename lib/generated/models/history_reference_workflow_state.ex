defmodule Generated.Models.HistoryReferenceWorkflowState do
  @moduledoc """
  A references to a Story Workflow State.
  """

  @type t :: %__MODULE__{
    entity_type: String.t(),
        id: any(),
        name: String.t(),
        type: String.t()
  }

  defstruct [:entity_type, :id, :name, :type]

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


@doc """
Either "backlog", "unstarted", "started", or "done".
"""
def type(%__MODULE__{type: value}), do: value

end
