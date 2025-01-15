defmodule Generated.Models.CreateObjective do
  @moduledoc """
  Generated struct for CreateObjective
  """

  @type t :: %__MODULE__{
    categories: list(Generated.Models.CreateCategoryParams.t()),
        completed_at_override: String.t(),
        description: String.t(),
        name: String.t(),
        started_at_override: String.t(),
        state: String.t()
  }

  defstruct [:categories, :completed_at_override, :description, :name, :started_at_override, :state]

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
