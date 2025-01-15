defmodule Generated.Models.IterationStats do
  @moduledoc """
  A group of calculated values for this Iteration.
  """

  @type t :: %__MODULE__{
    average_cycle_time: integer(),
        average_lead_time: integer(),
        num_points: integer(),
        num_points_backlog: integer(),
        num_points_done: integer(),
        num_points_started: integer(),
        num_points_unstarted: integer(),
        num_related_documents: integer(),
        num_stories_backlog: integer(),
        num_stories_done: integer(),
        num_stories_started: integer(),
        num_stories_unestimated: integer(),
        num_stories_unstarted: integer()
  }

  defstruct [:average_cycle_time, :average_lead_time, :num_points, :num_points_backlog, :num_points_done, :num_points_started, :num_points_unstarted, :num_related_documents, :num_stories_backlog, :num_stories_done, :num_stories_started, :num_stories_unestimated, :num_stories_unstarted]

  @doc """
The average cycle time (in seconds) of completed stories in this Iteration.
"""
def average_cycle_time(%__MODULE__{average_cycle_time: value}), do: value


@doc """
The average lead time (in seconds) of completed stories in this Iteration.
"""
def average_lead_time(%__MODULE__{average_lead_time: value}), do: value


@doc """
The total number of points in this Iteration.
"""
def num_points(%__MODULE__{num_points: value}), do: value


@doc """
The total number of backlog points in this Iteration.
"""
def num_points_backlog(%__MODULE__{num_points_backlog: value}), do: value


@doc """
The total number of completed points in this Iteration.
"""
def num_points_done(%__MODULE__{num_points_done: value}), do: value


@doc """
The total number of started points in this Iteration.
"""
def num_points_started(%__MODULE__{num_points_started: value}), do: value


@doc """
The total number of unstarted points in this Iteration.
"""
def num_points_unstarted(%__MODULE__{num_points_unstarted: value}), do: value


@doc """
The total number of documents related to an Iteration
"""
def num_related_documents(%__MODULE__{num_related_documents: value}), do: value


@doc """
The total number of backlog Stories in this Iteration.
"""
def num_stories_backlog(%__MODULE__{num_stories_backlog: value}), do: value


@doc """
The total number of done Stories in this Iteration.
"""
def num_stories_done(%__MODULE__{num_stories_done: value}), do: value


@doc """
The total number of started Stories in this Iteration.
"""
def num_stories_started(%__MODULE__{num_stories_started: value}), do: value


@doc """
The total number of Stories with no point estimate.
"""
def num_stories_unestimated(%__MODULE__{num_stories_unestimated: value}), do: value


@doc """
The total number of unstarted Stories in this Iteration.
"""
def num_stories_unstarted(%__MODULE__{num_stories_unstarted: value}), do: value

end
