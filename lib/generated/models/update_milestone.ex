defmodule Generated.Models.UpdateMilestone do
  @moduledoc """
  Generated struct for UpdateMilestone
  """

  @type t :: %__MODULE__{
    after_id: integer(),
        archived: boolean(),
        before_id: integer(),
        categories: list(Generated.Models.CreateCategoryParams.t()),
        completed_at_override: String.t(),
        description: String.t(),
        name: String.t(),
        started_at_override: String.t(),
        state: String.t()
  }

  defstruct [:after_id, :archived, :before_id, :categories, :completed_at_override, :description, :name, :started_at_override, :state]

  @doc """
The ID of the Milestone we want to move this Milestone after.
"""
def after_id(%__MODULE__{after_id: value}), do: value


@doc """
A boolean indicating whether the Milestone is archived or not
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The ID of the Milestone we want to move this Milestone before.
"""
def before_id(%__MODULE__{before_id: value}), do: value


@doc """
An array of IDs of Categories attached to the Milestone.
"""
def categories(%__MODULE__{categories: value}), do: value


@doc """
A manual override for the time/date the Milestone was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
The Milestone's description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The name of the Milestone.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
A manual override for the time/date the Milestone was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
The workflow state that the Milestone is in.
"""
def state(%__MODULE__{state: value}), do: value

end
