defmodule Generated.Models.StoryHistoryChangeOldNewInt do
  @moduledoc """
  The estimate value for the Story
  """

  @type t :: %__MODULE__{
    new: integer(),
        old: integer()
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
