defmodule Generated.Models.HistoryChangesStory do
  @moduledoc """
  The changes that have occurred as a result of the action.
  """

  @type t :: %__MODULE__{
    archived: Generated.Models.StoryHistoryChangeOldNewBool.t(),
        blocked: Generated.Models.StoryHistoryChangeOldNewBool.t(),
        blocker: Generated.Models.StoryHistoryChangeOldNewBool.t(),
        branch_ids: Generated.Models.StoryHistoryChangeAddsRemovesInt.t(),
        commit_ids: Generated.Models.StoryHistoryChangeAddsRemovesInt.t(),
        completed: Generated.Models.StoryHistoryChangeOldNewBool.t(),
        custom_field_value_ids: Generated.Models.StoryHistoryChangeAddsRemovesUuid.t(),
        deadline: Generated.Models.StoryHistoryChangeOldNewStr.t(),
        description: Generated.Models.StoryHistoryChangeOldNewStr.t(),
        epic_id: Generated.Models.StoryHistoryChangeOldNewInt.t(),
        estimate: Generated.Models.StoryHistoryChangeOldNewInt.t(),
        follower_ids: Generated.Models.StoryHistoryChangeAddsRemovesUuid.t(),
        group_id: Generated.Models.StoryHistoryChangeOldNewUuid.t(),
        iteration_id: Generated.Models.StoryHistoryChangeOldNewInt.t(),
        label_ids: Generated.Models.StoryHistoryChangeAddsRemovesInt.t(),
        mention_ids: Generated.Models.StoryHistoryChangeAddsRemovesUuid.t(),
        name: Generated.Models.StoryHistoryChangeOldNewStr.t(),
        object_story_link_ids: Generated.Models.StoryHistoryChangeAddsRemovesInt.t(),
        owner_ids: Generated.Models.StoryHistoryChangeAddsRemovesUuid.t(),
        project_id: Generated.Models.StoryHistoryChangeOldNewInt.t(),
        requested_by_id: Generated.Models.StoryHistoryChangeOldNewUuid.t(),
        started: Generated.Models.StoryHistoryChangeOldNewBool.t(),
        story_type: Generated.Models.StoryHistoryChangeOldNewStr.t(),
        subject_story_link_ids: Generated.Models.StoryHistoryChangeAddsRemovesInt.t(),
        task_ids: Generated.Models.StoryHistoryChangeAddsRemovesInt.t(),
        workflow_state_id: Generated.Models.StoryHistoryChangeOldNewInt.t()
  }

  defstruct [:archived, :blocked, :blocker, :branch_ids, :commit_ids, :completed, :custom_field_value_ids, :deadline, :description, :epic_id, :estimate, :follower_ids, :group_id, :iteration_id, :label_ids, :mention_ids, :name, :object_story_link_ids, :owner_ids, :project_id, :requested_by_id, :started, :story_type, :subject_story_link_ids, :task_ids, :workflow_state_id]

  @doc """
Field archived
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
Field blocked
"""
def blocked(%__MODULE__{blocked: value}), do: value


@doc """
Field blocker
"""
def blocker(%__MODULE__{blocker: value}), do: value


@doc """
Field branch_ids
"""
def branch_ids(%__MODULE__{branch_ids: value}), do: value


@doc """
Field commit_ids
"""
def commit_ids(%__MODULE__{commit_ids: value}), do: value


@doc """
Field completed
"""
def completed(%__MODULE__{completed: value}), do: value


@doc """
Field custom_field_value_ids
"""
def custom_field_value_ids(%__MODULE__{custom_field_value_ids: value}), do: value


@doc """
Field deadline
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
Field description
"""
def description(%__MODULE__{description: value}), do: value


@doc """
Field epic_id
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
Field estimate
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
Field follower_ids
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
Field group_id
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
Field iteration_id
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
Field label_ids
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
Field mention_ids
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
Field name
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field object_story_link_ids
"""
def object_story_link_ids(%__MODULE__{object_story_link_ids: value}), do: value


@doc """
Field owner_ids
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
Field project_id
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
Field requested_by_id
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
Field started
"""
def started(%__MODULE__{started: value}), do: value


@doc """
Field story_type
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
Field subject_story_link_ids
"""
def subject_story_link_ids(%__MODULE__{subject_story_link_ids: value}), do: value


@doc """
Field task_ids
"""
def task_ids(%__MODULE__{task_ids: value}), do: value


@doc """
Field workflow_state_id
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value

end
