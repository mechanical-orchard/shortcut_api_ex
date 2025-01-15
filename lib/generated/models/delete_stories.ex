defmodule Generated.Models.DeleteStories do
  @moduledoc """
  Generated struct for DeleteStories
  """

  @type t :: %__MODULE__{
    story_ids: list(integer())
  }

  defstruct [:story_ids]

  @doc """
An array of IDs of Stories to delete.
"""
def story_ids(%__MODULE__{story_ids: value}), do: value

end
