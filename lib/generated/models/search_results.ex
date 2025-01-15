defmodule Generated.Models.SearchResults do
  @moduledoc """
  The results of the multi-entity search query.
  """

  @type t :: %__MODULE__{
    epics: Generated.Models.EpicSearchResults.t(),
        iterations: Generated.Models.IterationSearchResults.t(),
        milestones: Generated.Models.ObjectiveSearchResults.t(),
        stories: Generated.Models.StorySearchResults.t()
  }

  defstruct [:epics, :iterations, :milestones, :stories]

  @doc """
Field epics
"""
def epics(%__MODULE__{epics: value}), do: value


@doc """
Field iterations
"""
def iterations(%__MODULE__{iterations: value}), do: value


@doc """
Field milestones
"""
def milestones(%__MODULE__{milestones: value}), do: value


@doc """
Field stories
"""
def stories(%__MODULE__{stories: value}), do: value

end
