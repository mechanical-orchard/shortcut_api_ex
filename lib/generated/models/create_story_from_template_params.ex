defmodule Generated.Models.CreateStoryFromTemplateParams do
  @moduledoc """
  Request parameters for creating a story from a story template. These parameters are merged with the values derived from the template.
  """

  @type t :: %__MODULE__{
    requested_by_id: String.t(),
        created_at: String.t(),
        archived: boolean(),
        custom_fields: list(Generated.Models.CustomFieldValueParams.t()),
        custom_fields_add: list(Generated.Models.CustomFieldValueParams.t()),
        file_ids_remove: list(integer()),
        file_ids_add: list(integer()),
        deadline: String.t(),
        project_id: integer(),
        external_links: list(String.t()),
        owner_ids_remove: list(String.t()),
        labels_add: list(Generated.Models.CreateLabelParams.t()),
        linked_file_ids_add: list(integer()),
        external_links_add: list(String.t()),
        linked_file_ids: list(integer()),
        workflow_state_id: integer(),
        move_to: String.t(),
        labels: list(Generated.Models.CreateLabelParams.t()),
        external_links_remove: list(String.t()),
        external_id: String.t(),
        linked_file_ids_remove: list(integer()),
        owner_ids: list(String.t()),
        follower_ids_remove: list(String.t()),
        owner_ids_add: list(String.t()),
        estimate: integer(),
        comments: list(Generated.Models.CreateStoryCommentParams.t()),
        story_links: list(Generated.Models.CreateStoryLinkParams.t()),
        iteration_id: integer(),
        story_template_id: String.t(),
        custom_fields_remove: list(Generated.Models.RemoveCustomFieldParams.t()),
        started_at_override: String.t(),
        story_type: String.t(),
        source_task_id: integer(),
        name: String.t(),
        description: String.t(),
        sub_tasks: list(Generated.Models.CreateSubTaskParams.t()),
        updated_at: String.t(),
        epic_id: integer(),
        labels_remove: list(Generated.Models.RemoveLabelParams.t()),
        file_ids: list(integer()),
        tasks: list(Generated.Models.CreateTaskParams.t()),
        completed_at_override: String.t(),
        follower_ids: list(String.t()),
        follower_ids_add: list(String.t()),
        group_id: String.t()
  }

  defstruct [:requested_by_id, :created_at, :archived, :custom_fields, :custom_fields_add, :file_ids_remove, :file_ids_add, :deadline, :project_id, :external_links, :owner_ids_remove, :labels_add, :linked_file_ids_add, :external_links_add, :linked_file_ids, :workflow_state_id, :move_to, :labels, :external_links_remove, :external_id, :linked_file_ids_remove, :owner_ids, :follower_ids_remove, :owner_ids_add, :estimate, :comments, :story_links, :iteration_id, :story_template_id, :custom_fields_remove, :started_at_override, :story_type, :source_task_id, :name, :description, :sub_tasks, :updated_at, :epic_id, :labels_remove, :file_ids, :tasks, :completed_at_override, :follower_ids, :follower_ids_add, :group_id]

  @doc """
The ID of the member that requested the story.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
The time/date the Story was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
Controls the story's archived state.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
A map specifying a CustomField ID and CustomFieldEnumValue ID that represents an assertion of some value for a CustomField.
"""
def custom_fields(%__MODULE__{custom_fields: value}), do: value


@doc """
A map specifying a CustomField ID and CustomFieldEnumValue ID that represents an assertion of some value for a CustomField. These will be added to any fields provided by the template. Cannot be used in conjunction with `custom_fields`.
"""
def custom_fields_add(%__MODULE__{custom_fields_add: value}), do: value


@doc """
An array of IDs of files removed from files from the template. Cannot be used in conjunction with `file_ids`.
"""
def file_ids_remove(%__MODULE__{file_ids_remove: value}), do: value


@doc """
An array of IDs of files attached to the story in addition to files from the template. Cannot be used in conjunction with `file_ids`.
"""
def file_ids_add(%__MODULE__{file_ids_add: value}), do: value


@doc """
The due date of the story.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
The ID of the project the story belongs to.
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
An array of External Links associated with this story.
"""
def external_links(%__MODULE__{external_links: value}), do: value


@doc """
The UUIDs of the new owners to be removed from owners from the template. Cannot be used in conjunction with `owners`.
"""
def owner_ids_remove(%__MODULE__{owner_ids_remove: value}), do: value


@doc """
An array of labels attached to the story in addition to the labels provided by the template. Cannot be used in conjunction with `labels`.
"""
def labels_add(%__MODULE__{labels_add: value}), do: value


@doc """
An array of IDs of linked files attached to the story in addition to files from the template. Cannot be used in conjunction with `linked_files`.
"""
def linked_file_ids_add(%__MODULE__{linked_file_ids_add: value}), do: value


@doc """
An array of External Links associated with this story. These will be added to any links provided by the template. Cannot be used in conjunction with `external_links`.
"""
def external_links_add(%__MODULE__{external_links_add: value}), do: value


@doc """
An array of IDs of linked files attached to the story.
"""
def linked_file_ids(%__MODULE__{linked_file_ids: value}), do: value


@doc """
The ID of the workflow state the story will be in.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value


@doc """
One of "first" or "last". This can be used to move the given story to the first or last position in the workflow state.
"""
def move_to(%__MODULE__{move_to: value}), do: value


@doc """
An array of labels attached to the story.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
An array of External Links associated with this story. These will be removed from any links provided by the template. Cannot be used in conjunction with `external_links`.
"""
def external_links_remove(%__MODULE__{external_links_remove: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Story has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of IDs of linked files removed from files from the template. Cannot be used in conjunction with `linked_files.`
"""
def linked_file_ids_remove(%__MODULE__{linked_file_ids_remove: value}), do: value


@doc """
An array of UUIDs of the owners of this story.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The UUIDs of the new followers to be removed from followers from the template. Cannot be used in conjunction with `follower_ids`.
"""
def follower_ids_remove(%__MODULE__{follower_ids_remove: value}), do: value


@doc """
The UUIDs of the new owners to be added in addition to owners from the template. Cannot be used in conjunction with `owners`.
"""
def owner_ids_add(%__MODULE__{owner_ids_add: value}), do: value


@doc """
The numeric point estimate of the story. Can also be null, which means unestimated.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An array of comments to add to the story.
"""
def comments(%__MODULE__{comments: value}), do: value


@doc """
An array of story links attached to the story.
"""
def story_links(%__MODULE__{story_links: value}), do: value


@doc """
The ID of the iteration the story belongs to.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
The id of the story template used to create this story.
"""
def story_template_id(%__MODULE__{story_template_id: value}), do: value


@doc """
A map specifying a CustomField ID. These will be removed from any fields provided by the template. Cannot be used in conjunction with `custom_fields`.
"""
def custom_fields_remove(%__MODULE__{custom_fields_remove: value}), do: value


@doc """
A manual override for the time/date the Story was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
The type of story (feature, bug, chore).
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
Given this story was converted from a task in another story, this is the original task ID that was converted to this story.
"""
def source_task_id(%__MODULE__{source_task_id: value}), do: value


@doc """
The name of the story. Must be provided if the template does not provide a name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The description of the story.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
An array of sub tasks to create.
"""
def sub_tasks(%__MODULE__{sub_tasks: value}), do: value


@doc """
The time/date the Story was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The ID of the epic the story belongs to.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
An array of labels to remove from the labels provided by the template. Cannot be used in conjunction with `labels`.
"""
def labels_remove(%__MODULE__{labels_remove: value}), do: value


@doc """
An array of IDs of files attached to the story.
"""
def file_ids(%__MODULE__{file_ids: value}), do: value


@doc """
An array of tasks connected to the story.
"""
def tasks(%__MODULE__{tasks: value}), do: value


@doc """
A manual override for the time/date the Story was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
An array of UUIDs of the followers of this story.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The UUIDs of the new followers to be added in addition to followers from the template. Cannot be used in conjunction with `follower_ids.`
"""
def follower_ids_add(%__MODULE__{follower_ids_add: value}), do: value


@doc """
The id of the group to associate with this story.
"""
def group_id(%__MODULE__{group_id: value}), do: value

end
