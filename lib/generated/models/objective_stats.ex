defmodule Generated.Models.ObjectiveStats do
  @moduledoc """
  A group of calculated values for this Objective.
  """

  @type t :: %__MODULE__{
    average_cycle_time: integer(),
        average_lead_time: integer(),
        num_related_documents: integer()
  }

  defstruct [:average_cycle_time, :average_lead_time, :num_related_documents]

  @doc """
The average cycle time (in seconds) of completed stories in this Objective.
"""
def average_cycle_time(%__MODULE__{average_cycle_time: value}), do: value


@doc """
The average lead time (in seconds) of completed stories in this Objective.
"""
def average_lead_time(%__MODULE__{average_lead_time: value}), do: value


@doc """
The number of related documents to this Objective.
"""
def num_related_documents(%__MODULE__{num_related_documents: value}), do: value

end
