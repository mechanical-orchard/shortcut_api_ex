defmodule Generated.Models.StoryLink do
  @moduledoc """
  Story links allow you create semantic relationships between two stories. Relationship types are relates to, blocks / blocked by, and duplicates / is duplicated by. The format is `subject -> link -> object`, or for example "story 5 blocks story 6".
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        entity_type: String.t(),
        id: integer(),
        object_id: integer(),
        subject_id: integer(),
        subject_workflow_state_id: integer(),
        updated_at: String.t(),
        verb: String.t()
  }

  defstruct [:created_at, :entity_type, :id, :object_id, :subject_id, :subject_workflow_state_id, :updated_at, :verb]

  @doc """
The time/date when the Story Link was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique identifier of the Story Link.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The ID of the object Story.
"""
def object_id(%__MODULE__{object_id: value}), do: value


@doc """
The ID of the subject Story.
"""
def subject_id(%__MODULE__{subject_id: value}), do: value


@doc """
The workflow state of the "subject" story.
"""
def subject_workflow_state_id(%__MODULE__{subject_workflow_state_id: value}), do: value


@doc """
The time/date when the Story Link was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
How the subject Story acts on the object Story. This can be "blocks", "duplicates", or "relates to".
"""
def verb(%__MODULE__{verb: value}), do: value

end
