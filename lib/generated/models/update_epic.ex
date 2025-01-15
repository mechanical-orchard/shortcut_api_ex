defmodule Generated.Models.UpdateEpic do
  @moduledoc """
  Generated struct for UpdateEpic
  """

  @type t :: %__MODULE__{
    after_id: integer(),
        archived: boolean(),
        before_id: integer(),
        completed_at_override: String.t(),
        deadline: String.t(),
        description: String.t(),
        epic_state_id: integer(),
        external_id: String.t(),
        follower_ids: list(String.t()),
        group_id: String.t(),
        group_ids: list(String.t()),
        labels: list(Generated.Models.CreateLabelParams.t()),
        milestone_id: integer(),
        name: String.t(),
        objective_ids: list(integer()),
        owner_ids: list(String.t()),
        planned_start_date: String.t(),
        requested_by_id: String.t(),
        started_at_override: String.t(),
        state: String.t()
  }

  defstruct [:after_id, :archived, :before_id, :completed_at_override, :deadline, :description, :epic_state_id, :external_id, :follower_ids, :group_id, :group_ids, :labels, :milestone_id, :name, :objective_ids, :owner_ids, :planned_start_date, :requested_by_id, :started_at_override, :state]

  @doc """
The ID of the Epic we want to move this Epic after.
"""
def after_id(%__MODULE__{after_id: value}), do: value


@doc """
A true/false boolean indicating whether the Epic is in archived state.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The ID of the Epic we want to move this Epic before.
"""
def before_id(%__MODULE__{before_id: value}), do: value


@doc """
A manual override for the time/date the Epic was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
The Epic's deadline.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
The Epic's description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The ID of the Epic State.
"""
def epic_state_id(%__MODULE__{epic_state_id: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Epic has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs for any Members you want to add as Followers on this Epic.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
`Deprecated` The ID of the group to associate with the epic. Use `group_ids`.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
An array of UUIDS for Groups to which this Epic is related.
"""
def group_ids(%__MODULE__{group_ids: value}), do: value


@doc """
An array of Labels attached to the Epic.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
`Deprecated` The ID of the Milestone this Epic is related to. Use `objective_ids`.
"""
def milestone_id(%__MODULE__{milestone_id: value}), do: value


@doc """
The Epic's name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
An array of IDs for Objectives to which this Epic is related.
"""
def objective_ids(%__MODULE__{objective_ids: value}), do: value


@doc """
An array of UUIDs for any members you want to add as Owners on this Epic.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The Epic's planned start date.
"""
def planned_start_date(%__MODULE__{planned_start_date: value}), do: value


@doc """
The ID of the member that requested the epic.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
A manual override for the time/date the Epic was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
`Deprecated` The Epic's state (to do, in progress, or done); will be ignored when `epic_state_id` is set.
"""
def state(%__MODULE__{state: value}), do: value

end
