defmodule Generated.Models.StoryHistoryChangeOldNewUuid do
  @moduledoc """
  The Team ID for the Story.
  """

  @type t :: %__MODULE__{
    new: String.t(),
        old: String.t()
  }

  defstruct [:new, :old]

  @doc """
The new value.
"""
def new(%__MODULE__{new: value}), do: value


@doc """
The old value.
"""
def old(%__MODULE__{old: value}), do: value

end
