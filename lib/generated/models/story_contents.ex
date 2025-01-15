defmodule Generated.Models.StoryContents do
  @moduledoc """
  A container entity for the attributes this template should populate.
  """

  @type t :: %__MODULE__{
    custom_fields: list(Generated.Models.CustomFieldValueParams.t()),
        deadline: String.t(),
        description: String.t(),
        entity_type: String.t(),
        epic_id: integer(),
        estimate: integer(),
        external_links: list(String.t()),
        files: list(Generated.Models.UploadedFile.t()),
        follower_ids: list(String.t()),
        group_id: String.t(),
        iteration_id: integer(),
        label_ids: list(integer()),
        labels: list(Generated.Models.LabelSlim.t()),
        linked_files: list(Generated.Models.LinkedFile.t()),
        name: String.t(),
        owner_ids: list(String.t()),
        project_id: integer(),
        story_type: String.t(),
        tasks: list(Generated.Models.StoryContentsTask.t()),
        workflow_state_id: integer()
  }

  defstruct [:custom_fields, :deadline, :description, :entity_type, :epic_id, :estimate, :external_links, :files, :follower_ids, :group_id, :iteration_id, :label_ids, :labels, :linked_files, :name, :owner_ids, :project_id, :story_type, :tasks, :workflow_state_id]

  @doc """
An array of maps specifying a CustomField ID and CustomFieldEnumValue ID that represents an assertion of some value for a CustomField.
"""
def custom_fields(%__MODULE__{custom_fields: value}), do: value


@doc """
The due date of the story.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
The description of the story.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the epic the story belongs to.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
The numeric point estimate of the story. Can also be null, which means unestimated.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An array of external links connected to the story.
"""
def external_links(%__MODULE__{external_links: value}), do: value


@doc """
An array of files attached to the story.
"""
def files(%__MODULE__{files: value}), do: value


@doc """
An array of UUIDs for any Members listed as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The ID of the group to which the story is assigned.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
The ID of the iteration the story belongs to.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
An array of label ids attached to the story.
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
An array of labels attached to the story.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
An array of linked files attached to the story.
"""
def linked_files(%__MODULE__{linked_files: value}), do: value


@doc """
The name of the story.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
An array of UUIDs of the owners of this story.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The ID of the project the story belongs to.
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
The type of story (feature, bug, chore).
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
An array of tasks connected to the story.
"""
def tasks(%__MODULE__{tasks: value}), do: value


@doc """
The ID of the workflow state the story is currently in.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value

end
