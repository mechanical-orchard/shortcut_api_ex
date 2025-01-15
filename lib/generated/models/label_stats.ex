defmodule Generated.Models.LabelStats do
  @moduledoc """
  A group of calculated values for this Label. This is not included if the slim? flag is set to true for the List Labels endpoint.
  """

  @type t :: %__MODULE__{
    num_epics: integer(),
        num_epics_completed: integer(),
        num_epics_in_progress: integer(),
        num_epics_total: integer(),
        num_epics_unstarted: integer(),
        num_points_backlog: integer(),
        num_points_completed: integer(),
        num_points_in_progress: integer(),
        num_points_total: integer(),
        num_points_unstarted: integer(),
        num_related_documents: integer(),
        num_stories_backlog: integer(),
        num_stories_completed: integer(),
        num_stories_in_progress: integer(),
        num_stories_total: integer(),
        num_stories_unestimated: integer(),
        num_stories_unstarted: integer()
  }

  defstruct [:num_epics, :num_epics_completed, :num_epics_in_progress, :num_epics_total, :num_epics_unstarted, :num_points_backlog, :num_points_completed, :num_points_in_progress, :num_points_total, :num_points_unstarted, :num_related_documents, :num_stories_backlog, :num_stories_completed, :num_stories_in_progress, :num_stories_total, :num_stories_unestimated, :num_stories_unstarted]

  @doc """
The total number of Epics with this Label.
"""
def num_epics(%__MODULE__{num_epics: value}), do: value


@doc """
The number of completed Epics associated with this Label.
"""
def num_epics_completed(%__MODULE__{num_epics_completed: value}), do: value


@doc """
The number of in progress epics associated with this label.
"""
def num_epics_in_progress(%__MODULE__{num_epics_in_progress: value}), do: value


@doc """
The total number of Epics associated with this Label.
"""
def num_epics_total(%__MODULE__{num_epics_total: value}), do: value


@doc """
The number of unstarted epics associated with this label.
"""
def num_epics_unstarted(%__MODULE__{num_epics_unstarted: value}), do: value


@doc """
The total number of backlog points with this Label.
"""
def num_points_backlog(%__MODULE__{num_points_backlog: value}), do: value


@doc """
The total number of completed points with this Label.
"""
def num_points_completed(%__MODULE__{num_points_completed: value}), do: value


@doc """
The total number of in-progress points with this Label.
"""
def num_points_in_progress(%__MODULE__{num_points_in_progress: value}), do: value


@doc """
The total number of points with this Label.
"""
def num_points_total(%__MODULE__{num_points_total: value}), do: value


@doc """
The total number of unstarted points with this Label.
"""
def num_points_unstarted(%__MODULE__{num_points_unstarted: value}), do: value


@doc """
The total number of Documents associated this Label.
"""
def num_related_documents(%__MODULE__{num_related_documents: value}), do: value


@doc """
The total number of stories backlog Stories with this Label.
"""
def num_stories_backlog(%__MODULE__{num_stories_backlog: value}), do: value


@doc """
The total number of completed Stories with this Label.
"""
def num_stories_completed(%__MODULE__{num_stories_completed: value}), do: value


@doc """
The total number of in-progress Stories with this Label.
"""
def num_stories_in_progress(%__MODULE__{num_stories_in_progress: value}), do: value


@doc """
The total number of Stories with this Label.
"""
def num_stories_total(%__MODULE__{num_stories_total: value}), do: value


@doc """
The total number of Stories with no point estimate with this Label.
"""
def num_stories_unestimated(%__MODULE__{num_stories_unestimated: value}), do: value


@doc """
The total number of stories unstarted Stories with this Label.
"""
def num_stories_unstarted(%__MODULE__{num_stories_unstarted: value}), do: value

end
