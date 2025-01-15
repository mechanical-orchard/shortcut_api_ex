defmodule Generated.Models.HistoryChangesTask do
  @moduledoc """
  The changes that have occurred as a result of the action.
  """

  @type t :: %__MODULE__{
    complete: Generated.Models.StoryHistoryChangeOldNewBool.t(),
        description: Generated.Models.StoryHistoryChangeOldNewStr.t(),
        mention_ids: Generated.Models.StoryHistoryChangeAddsRemovesUuid.t(),
        owner_ids: Generated.Models.StoryHistoryChangeAddsRemovesUuid.t()
  }

  defstruct [:complete, :description, :mention_ids, :owner_ids]

  @doc """
Field complete
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
Field description
"""
def description(%__MODULE__{description: value}), do: value


@doc """
Field mention_ids
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
Field owner_ids
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value

end
