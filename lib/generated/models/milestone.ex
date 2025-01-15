defmodule Generated.Models.Milestone do
  @moduledoc """
  (Deprecated) A Milestone is a collection of Epics that represent a release or some other large initiative that you are working on. Milestones have become Objectives, so you should use Objective-related API resources instead of Milestone ones.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        archived: boolean(),
        categories: list(Generated.Models.Category.t()),
        completed: boolean(),
        completed_at: String.t(),
        completed_at_override: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        global_id: String.t(),
        id: integer(),
        key_result_ids: list(String.t()),
        name: String.t(),
        position: integer(),
        started: boolean(),
        started_at: String.t(),
        started_at_override: String.t(),
        state: String.t(),
        stats: Generated.Models.MilestoneStats.t(),
        updated_at: String.t()
  }

  defstruct [:app_url, :archived, :categories, :completed, :completed_at, :completed_at_override, :created_at, :description, :entity_type, :global_id, :id, :key_result_ids, :name, :position, :started, :started_at, :started_at_override, :state, :stats, :updated_at]

  @doc """
The Shortcut application url for the Milestone.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
A boolean indicating whether the Milestone has been archived or not.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
An array of Categories attached to the Milestone.
"""
def categories(%__MODULE__{categories: value}), do: value


@doc """
A true/false boolean indicating if the Milestone has been completed.
"""
def completed(%__MODULE__{completed: value}), do: value


@doc """
The time/date the Milestone was completed.
"""
def completed_at(%__MODULE__{completed_at: value}), do: value


@doc """
A manual override for the time/date the Milestone was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
The time/date the Milestone was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The Milestone's description.
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
The unique ID of the Milestone.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The IDs of the Key Results associated with the Objective.
"""
def key_result_ids(%__MODULE__{key_result_ids: value}), do: value


@doc """
The name of the Milestone.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
A number representing the position of the Milestone in relation to every other Milestone within the Workspace.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
A true/false boolean indicating if the Milestone has been started.
"""
def started(%__MODULE__{started: value}), do: value


@doc """
The time/date the Milestone was started.
"""
def started_at(%__MODULE__{started_at: value}), do: value


@doc """
A manual override for the time/date the Milestone was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
The workflow state that the Milestone is in.
"""
def state(%__MODULE__{state: value}), do: value


@doc """
Field stats
"""
def stats(%__MODULE__{stats: value}), do: value


@doc """
The time/date the Milestone was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
