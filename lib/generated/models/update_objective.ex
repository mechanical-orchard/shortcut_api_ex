defmodule Generated.Models.UpdateObjective do
  @moduledoc """
  Generated struct for UpdateObjective
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
The ID of the Objective we want to move this Objective after.
"""
def after_id(%__MODULE__{after_id: value}), do: value


@doc """
A boolean indicating whether the Objective is archived or not
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The ID of the Objective we want to move this Objective before.
"""
def before_id(%__MODULE__{before_id: value}), do: value


@doc """
An array of IDs of Categories attached to the Objective.
"""
def categories(%__MODULE__{categories: value}), do: value


@doc """
A manual override for the time/date the Objective was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
The Objective's description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The name of the Objective.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
A manual override for the time/date the Objective was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
The workflow state that the Objective is in.
"""
def state(%__MODULE__{state: value}), do: value

end
