defmodule Generated.Models.HistoryChangesStoryLink do
  @moduledoc """
  The changes that have occurred as a result of the action.
  """

  @type t :: %__MODULE__{
    object_id: Generated.Models.StoryHistoryChangeOldNewInt.t(),
        subject_id: Generated.Models.StoryHistoryChangeOldNewInt.t(),
        verb: Generated.Models.StoryHistoryChangeOldNewStr.t()
  }

  defstruct [:object_id, :subject_id, :verb]

  @doc """
Field object_id
"""
def object_id(%__MODULE__{object_id: value}), do: value


@doc """
Field subject_id
"""
def subject_id(%__MODULE__{subject_id: value}), do: value


@doc """
Field verb
"""
def verb(%__MODULE__{verb: value}), do: value

end
