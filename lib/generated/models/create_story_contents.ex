defmodule Generated.Models.CreateStoryContents do
  @moduledoc """
  A map of story attributes this template populates.
  """

  @type t :: %__MODULE__{
    custom_fields: list(Generated.Models.CustomFieldValueParams.t()),
        deadline: String.t(),
        description: String.t(),
        epic_id: integer(),
        estimate: integer(),
        external_links: list(String.t()),
        file_ids: list(integer()),
        follower_ids: list(String.t()),
        group_id: String.t(),
        iteration_id: integer(),
        labels: list(Generated.Models.CreateLabelParams.t()),
        linked_file_ids: list(integer()),
        name: String.t(),
        owner_ids: list(String.t()),
        project_id: integer(),
        story_type: String.t(),
        tasks: list(Generated.Models.BaseTaskParams.t()),
        workflow_state_id: integer()
  }

  defstruct [:custom_fields, :deadline, :description, :epic_id, :estimate, :external_links, :file_ids, :follower_ids, :group_id, :iteration_id, :labels, :linked_file_ids, :name, :owner_ids, :project_id, :story_type, :tasks, :workflow_state_id]

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
The ID of the epic the to be populated.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
The numeric point estimate to be populated.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An array of external links to be populated.
"""
def external_links(%__MODULE__{external_links: value}), do: value


@doc """
An array of the attached file IDs to be populated.
"""
def file_ids(%__MODULE__{file_ids: value}), do: value


@doc """
An array of UUIDs for any Members listed as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The ID of the group to be populated.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
The ID of the iteration the to be populated.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
An array of labels to be populated by the template.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
An array of the linked file IDs to be populated.
"""
def linked_file_ids(%__MODULE__{linked_file_ids: value}), do: value


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
An array of tasks to be populated by the template.
"""
def tasks(%__MODULE__{tasks: value}), do: value


@doc """
The ID of the workflow state to be populated.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value

end
