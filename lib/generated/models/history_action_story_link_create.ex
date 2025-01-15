defmodule Generated.Models.HistoryActionStoryLinkCreate do
  @moduledoc """
  An action representing a Story Link being created.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        entity_type: String.t(),
        id: integer(),
        object_id: integer(),
        subject_id: integer(),
        verb: String.t()
  }

  defstruct [:action, :entity_type, :id, :object_id, :subject_id, :verb]

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
The Story ID of the object Story.
"""
def object_id(%__MODULE__{object_id: value}), do: value


@doc """
The Story ID of the subject Story.
"""
def subject_id(%__MODULE__{subject_id: value}), do: value


@doc """
The verb describing the link's relationship.
"""
def verb(%__MODULE__{verb: value}), do: value

end
