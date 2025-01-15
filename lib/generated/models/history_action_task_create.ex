defmodule Generated.Models.HistoryActionTaskCreate do
  @moduledoc """
  An action representing a Task being created.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        complete: boolean(),
        deadline: String.t(),
        description: String.t(),
        entity_type: String.t(),
        group_mention_ids: list(String.t()),
        id: integer(),
        mention_ids: list(String.t()),
        owner_ids: list(String.t())
  }

  defstruct [:action, :complete, :deadline, :description, :entity_type, :group_mention_ids, :id, :mention_ids, :owner_ids]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
Whether or not the Task is complete.
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
A timestamp that represent's the Task's deadline.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
The description of the Task.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
An array of Groups IDs that represent which have been mentioned in the Task.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
An array of Member IDs that represent who has been mentioned in the Task.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
An array of Member IDs that represent the Task's owners.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value

end
