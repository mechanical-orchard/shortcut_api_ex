defmodule Generated.Models.ProjectStats do
  @moduledoc """
  A group of calculated values for this Project.
  """

  @type t :: %__MODULE__{
    num_points: integer(),
        num_related_documents: integer(),
        num_stories: integer()
  }

  defstruct [:num_points, :num_related_documents, :num_stories]

  @doc """
The total number of points in this Project.
"""
def num_points(%__MODULE__{num_points: value}), do: value


@doc """
The total number of documents related to this Project
"""
def num_related_documents(%__MODULE__{num_related_documents: value}), do: value


@doc """
The total number of stories in this Project.
"""
def num_stories(%__MODULE__{num_stories: value}), do: value

end
