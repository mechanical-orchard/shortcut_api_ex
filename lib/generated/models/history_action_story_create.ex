defmodule Generated.Models.HistoryActionStoryCreate do
  @moduledoc """
  An action representing a Story being created.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        app_url: String.t(),
        blocked: boolean(),
        blocker: boolean(),
        completed: boolean(),
        custom_field_value_ids: list(String.t()),
        deadline: String.t(),
        description: String.t(),
        entity_type: String.t(),
        epic_id: integer(),
        estimate: integer(),
        follower_ids: list(String.t()),
        group_id: String.t(),
        id: integer(),
        iteration_id: integer(),
        label_ids: list(integer()),
        name: String.t(),
        object_story_link_ids: list(integer()),
        owner_ids: list(String.t()),
        project_id: integer(),
        requested_by_id: String.t(),
        started: boolean(),
        story_type: String.t(),
        subject_story_link_ids: list(integer()),
        task_ids: list(integer()),
        workflow_state_id: integer()
  }

  defstruct [:action, :app_url, :blocked, :blocker, :completed, :custom_field_value_ids, :deadline, :description, :entity_type, :epic_id, :estimate, :follower_ids, :group_id, :id, :iteration_id, :label_ids, :name, :object_story_link_ids, :owner_ids, :project_id, :requested_by_id, :started, :story_type, :subject_story_link_ids, :task_ids, :workflow_state_id]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The application URL of the Story.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
Whether or not the Story is blocked by another Story.
"""
def blocked(%__MODULE__{blocked: value}), do: value


@doc """
Whether or not the Story is blocking another Story.
"""
def blocker(%__MODULE__{blocker: value}), do: value


@doc """
Whether or not the Story is completed.
"""
def completed(%__MODULE__{completed: value}), do: value


@doc """
An array of Custom Field Enum Value ids on this Story.
"""
def custom_field_value_ids(%__MODULE__{custom_field_value_ids: value}), do: value


@doc """
The timestamp representing the Story's deadline.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
The description of the Story.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The Epic ID for this Story.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
The estimate (or point value) for the Story.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An array of Member IDs for the followers of the Story.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The Team IDs for the followers of the Story.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The Iteration ID the Story is in.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
An array of Labels IDs attached to the Story.
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
The name of the Story.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
An array of Story IDs that are the object of a Story Link relationship.
"""
def object_story_link_ids(%__MODULE__{object_story_link_ids: value}), do: value


@doc """
An array of Member IDs that are the owners of the Story.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The Project ID of the Story is in.
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
The ID of the Member that requested the Story.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
Whether or not the Story has been started.
"""
def started(%__MODULE__{started: value}), do: value


@doc """
The type of Story; either feature, bug, or chore.
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
An array of Story IDs that are the subject of a Story Link relationship.
"""
def subject_story_link_ids(%__MODULE__{subject_story_link_ids: value}), do: value


@doc """
An array of Task IDs on this Story.
"""
def task_ids(%__MODULE__{task_ids: value}), do: value


@doc """
An array of Workflow State IDs attached to the Story.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value

end
