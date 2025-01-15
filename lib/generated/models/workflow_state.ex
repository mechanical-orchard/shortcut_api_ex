defmodule Generated.Models.WorkflowState do
  @moduledoc """
  Workflow State is any of the at least 3 columns. Workflow States correspond to one of 3 types: Unstarted, Started, or Done.
  """

  @type t :: %__MODULE__{
    color: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        global_id: String.t(),
        id: integer(),
        name: String.t(),
        num_stories: integer(),
        num_story_templates: integer(),
        position: integer(),
        type: String.t(),
        updated_at: String.t(),
        verb: String.t()
  }

  defstruct [:color, :created_at, :description, :entity_type, :global_id, :id, :name, :num_stories, :num_story_templates, :position, :type, :updated_at, :verb]

  @doc """
The hex color for this Workflow State.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The time/date the Workflow State was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The description of what sort of Stories belong in that Workflow state.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The unique ID of the Workflow State.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The Workflow State's name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The number of Stories currently in that Workflow State.
"""
def num_stories(%__MODULE__{num_stories: value}), do: value


@doc """
The number of Story Templates associated with that Workflow State.
"""
def num_story_templates(%__MODULE__{num_story_templates: value}), do: value


@doc """
The position that the Workflow State is in, starting with 0 at the left.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
The type of Workflow State (Unstarted, Started, or Finished)
"""
def type(%__MODULE__{type: value}), do: value


@doc """
When the Workflow State was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The verb that triggers a move to that Workflow State when making VCS commits.
"""
def verb(%__MODULE__{verb: value}), do: value

end
