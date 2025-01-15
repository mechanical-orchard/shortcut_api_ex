defmodule Generated.Models.StoryHistoryChangeOldNewBool do
  @moduledoc """
  True if the Story has archived, otherwise false.
  """

  @type t :: %__MODULE__{
    new: boolean(),
        old: boolean()
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
