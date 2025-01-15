defmodule Generated.Models.TypedStoryLink do
  @moduledoc """
  The type of Story Link. The string can be subject or object.
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        entity_type: String.t(),
        id: integer(),
        object_id: integer(),
        subject_id: integer(),
        subject_workflow_state_id: integer(),
        type: String.t(),
        updated_at: String.t(),
        verb: String.t()
  }

  defstruct [:created_at, :entity_type, :id, :object_id, :subject_id, :subject_workflow_state_id, :type, :updated_at, :verb]

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
This indicates whether the Story is the subject or object in the Story Link.
"""
def type(%__MODULE__{type: value}), do: value


@doc """
The time/date when the Story Link was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
How the subject Story acts on the object Story. This can be "blocks", "duplicates", or "relates to".
"""
def verb(%__MODULE__{verb: value}), do: value

end
