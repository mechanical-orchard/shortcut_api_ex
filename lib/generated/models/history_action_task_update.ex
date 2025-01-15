defmodule Generated.Models.HistoryActionTaskUpdate do
  @moduledoc """
  An action representing a Task being updated.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        changes: Generated.Models.HistoryChangesTask.t(),
        complete: boolean(),
        description: String.t(),
        entity_type: String.t(),
        id: integer(),
        story_id: integer()
  }

  defstruct [:action, :changes, :complete, :description, :entity_type, :id, :story_id]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
Field changes
"""
def changes(%__MODULE__{changes: value}), do: value


@doc """
Whether or not the Task is complete.
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
The description of the Task.
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


@doc """
The Story ID that contains the Task.
"""
def story_id(%__MODULE__{story_id: value}), do: value

end
