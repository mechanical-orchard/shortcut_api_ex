defmodule Generated.Models.CreateStories do
  @moduledoc """
  Generated struct for CreateStories
  """

  @type t :: %__MODULE__{
    stories: list(Generated.Models.CreateStoryParams.t())
  }

  defstruct [:stories]

  @doc """
An array of stories to be created.
"""
def stories(%__MODULE__{stories: value}), do: value

end
