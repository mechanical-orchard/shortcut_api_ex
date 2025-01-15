defmodule Generated.Models.StoryHistoryChangeOldNewStr do
  @moduledoc """
  A timestamp that represents the Story's deadline.
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
