defmodule Generated.Models.KeyResult do
  @moduledoc """
  Generated struct for KeyResult
  """

  @type t :: %__MODULE__{
    current_observed_value: Generated.Models.KeyResultValue.t(),
        current_target_value: Generated.Models.KeyResultValue.t(),
        id: String.t(),
        initial_observed_value: Generated.Models.KeyResultValue.t(),
        name: String.t(),
        objective_id: integer(),
        progress: integer(),
        type: String.t()
  }

  defstruct [:current_observed_value, :current_target_value, :id, :initial_observed_value, :name, :objective_id, :progress, :type]

  @doc """
Field current_observed_value
"""
def current_observed_value(%__MODULE__{current_observed_value: value}), do: value


@doc """
Field current_target_value
"""
def current_target_value(%__MODULE__{current_target_value: value}), do: value


@doc """
The ID of the Key Result.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
Field initial_observed_value
"""
def initial_observed_value(%__MODULE__{initial_observed_value: value}), do: value


@doc """
The name of the Key Result.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The Objective to which this Key Result belongs.
"""
def objective_id(%__MODULE__{objective_id: value}), do: value


@doc """
The integer percentage of progress toward completion of the Key Result.
"""
def progress(%__MODULE__{progress: value}), do: value


@doc """
The type of the Key Result (numeric, percent, or boolean).
"""
def type(%__MODULE__{type: value}), do: value

end
