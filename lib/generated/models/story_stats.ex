defmodule Generated.Models.StoryStats do
  @moduledoc """
  The stats object for Stories
  """

  @type t :: %__MODULE__{
    num_related_documents: integer()
  }

  defstruct [:num_related_documents]

  @doc """
The number of documents related to this Story.
"""
def num_related_documents(%__MODULE__{num_related_documents: value}), do: value

end
