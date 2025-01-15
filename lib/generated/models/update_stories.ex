defmodule Generated.Models.UpdateStories do
  @moduledoc """
  Generated struct for UpdateStories
  """

  @type t :: %__MODULE__{
    after_id: integer(),
        archived: boolean(),
        before_id: integer(),
        custom_fields_add: list(Generated.Models.CustomFieldValueParams.t()),
        custom_fields_remove: list(Generated.Models.CustomFieldValueParams.t()),
        deadline: String.t(),
        epic_id: integer(),
        estimate: integer(),
        external_links: list(String.t()),
        follower_ids_add: list(String.t()),
        follower_ids_remove: list(String.t()),
        group_id: String.t(),
        iteration_id: integer(),
        labels_add: list(Generated.Models.CreateLabelParams.t()),
        labels_remove: list(Generated.Models.CreateLabelParams.t()),
        move_to: String.t(),
        owner_ids_add: list(String.t()),
        owner_ids_remove: list(String.t()),
        project_id: integer(),
        requested_by_id: String.t(),
        story_ids: list(integer()),
        story_type: String.t(),
        workflow_state_id: integer()
  }

  defstruct [:after_id, :archived, :before_id, :custom_fields_add, :custom_fields_remove, :deadline, :epic_id, :estimate, :external_links, :follower_ids_add, :follower_ids_remove, :group_id, :iteration_id, :labels_add, :labels_remove, :move_to, :owner_ids_add, :owner_ids_remove, :project_id, :requested_by_id, :story_ids, :story_type, :workflow_state_id]

  @doc """
The ID of the story that the stories are to be moved below.
"""
def after_id(%__MODULE__{after_id: value}), do: value


@doc """
If the Stories should be archived or not.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The ID of the story that the stories are to be moved before.
"""
def before_id(%__MODULE__{before_id: value}), do: value


@doc """
A map specifying a CustomField ID and CustomFieldEnumValue ID that represents an assertion of some value for a CustomField.
"""
def custom_fields_add(%__MODULE__{custom_fields_add: value}), do: value


@doc """
A map specifying a CustomField ID and CustomFieldEnumValue ID that represents an assertion of some value for a CustomField.
"""
def custom_fields_remove(%__MODULE__{custom_fields_remove: value}), do: value


@doc """
The due date of the story.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
The ID of the epic the story belongs to.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
The numeric point estimate of the story. Can also be null, which means unestimated.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An array of External Links associated with this story.
"""
def external_links(%__MODULE__{external_links: value}), do: value


@doc """
The UUIDs of the new followers to be added.
"""
def follower_ids_add(%__MODULE__{follower_ids_add: value}), do: value


@doc """
The UUIDs of the followers to be removed.
"""
def follower_ids_remove(%__MODULE__{follower_ids_remove: value}), do: value


@doc """
The Id of the Group the Stories should belong to.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
The ID of the iteration the story belongs to.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
An array of labels to be added.
"""
def labels_add(%__MODULE__{labels_add: value}), do: value


@doc """
An array of labels to be removed.
"""
def labels_remove(%__MODULE__{labels_remove: value}), do: value


@doc """
One of "first" or "last". This can be used to move the given story to the first or last position in the workflow state.
"""
def move_to(%__MODULE__{move_to: value}), do: value


@doc """
The UUIDs of the new owners to be added.
"""
def owner_ids_add(%__MODULE__{owner_ids_add: value}), do: value


@doc """
The UUIDs of the owners to be removed.
"""
def owner_ids_remove(%__MODULE__{owner_ids_remove: value}), do: value


@doc """
The ID of the Project the Stories should belong to.
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
The ID of the member that requested the story.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
The Ids of the Stories you wish to update.
"""
def story_ids(%__MODULE__{story_ids: value}), do: value


@doc """
The type of story (feature, bug, chore).
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
The ID of the workflow state to put the stories in.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value

end
