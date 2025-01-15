defmodule Generated.Models.StoryHistoryChangeAddsRemovesUuid do
  @moduledoc """
  Custom Field Enum Value IDs that have been added or removed from the Story.
  """

  @type t :: %__MODULE__{
    adds: list(String.t()),
        removes: list(String.t())
  }

  defstruct [:adds, :removes]

  @doc """
The values that have been added.
"""
def adds(%__MODULE__{adds: value}), do: value


@doc """
The values that have been removed
"""
def removes(%__MODULE__{removes: value}), do: value

end
