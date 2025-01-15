defmodule Generated.Models.CreateStoryParams do
  @moduledoc """
  Request parameters for creating a story.
  """

  @type t :: %__MODULE__{
    archived: boolean(),
        comments: list(Generated.Models.CreateStoryCommentParams.t()),
        completed_at_override: String.t(),
        created_at: String.t(),
        custom_fields: list(Generated.Models.CustomFieldValueParams.t()),
        deadline: String.t(),
        description: String.t(),
        epic_id: integer(),
        estimate: integer(),
        external_id: String.t(),
        external_links: list(String.t()),
        file_ids: list(integer()),
        follower_ids: list(String.t()),
        group_id: String.t(),
        iteration_id: integer(),
        labels: list(Generated.Models.CreateLabelParams.t()),
        linked_file_ids: list(integer()),
        move_to: String.t(),
        name: String.t(),
        owner_ids: list(String.t()),
        project_id: integer(),
        requested_by_id: String.t(),
        source_task_id: integer(),
        started_at_override: String.t(),
        story_links: list(Generated.Models.CreateStoryLinkParams.t()),
        story_template_id: String.t(),
        story_type: String.t(),
        sub_tasks: list(Generated.Models.CreateSubTaskParams.t()),
        tasks: list(Generated.Models.CreateTaskParams.t()),
        updated_at: String.t(),
        workflow_state_id: integer()
  }

  defstruct [:archived, :comments, :completed_at_override, :created_at, :custom_fields, :deadline, :description, :epic_id, :estimate, :external_id, :external_links, :file_ids, :follower_ids, :group_id, :iteration_id, :labels, :linked_file_ids, :move_to, :name, :owner_ids, :project_id, :requested_by_id, :source_task_id, :started_at_override, :story_links, :story_template_id, :story_type, :sub_tasks, :tasks, :updated_at, :workflow_state_id]

  @doc """
Controls the story's archived state.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
An array of comments to add to the story.
"""
def comments(%__MODULE__{comments: value}), do: value


@doc """
A manual override for the time/date the Story was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
The time/date the Story was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A map specifying a CustomField ID and CustomFieldEnumValue ID that represents an assertion of some value for a CustomField.
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
The ID of the epic the story belongs to.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
The numeric point estimate of the story. Can also be null, which means unestimated.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Story has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of External Links associated with this story.
"""
def external_links(%__MODULE__{external_links: value}), do: value


@doc """
An array of IDs of files attached to the story.
"""
def file_ids(%__MODULE__{file_ids: value}), do: value


@doc """
An array of UUIDs of the followers of this story.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The id of the group to associate with this story.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
The ID of the iteration the story belongs to.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
An array of labels attached to the story.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
An array of IDs of linked files attached to the story.
"""
def linked_file_ids(%__MODULE__{linked_file_ids: value}), do: value


@doc """
One of "first" or "last". This can be used to move the given story to the first or last position in the workflow state.
"""
def move_to(%__MODULE__{move_to: value}), do: value


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
The ID of the member that requested the story.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
Given this story was converted from a task in another story, this is the original task ID that was converted to this story.
"""
def source_task_id(%__MODULE__{source_task_id: value}), do: value


@doc """
A manual override for the time/date the Story was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
An array of story links attached to the story.
"""
def story_links(%__MODULE__{story_links: value}), do: value


@doc """
The id of the story template used to create this story, if applicable. This is just an association; no content from the story template is inherited by the story simply by setting this field.
"""
def story_template_id(%__MODULE__{story_template_id: value}), do: value


@doc """
The type of story (feature, bug, chore).
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
An array of sub tasks to create.
"""
def sub_tasks(%__MODULE__{sub_tasks: value}), do: value


@doc """
An array of tasks connected to the story.
"""
def tasks(%__MODULE__{tasks: value}), do: value


@doc """
The time/date the Story was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The ID of the workflow state the story will be in.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value

end
