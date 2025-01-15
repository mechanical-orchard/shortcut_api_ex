defmodule Generated.Models.UpdateStoryComment do
  @moduledoc """
  Generated struct for UpdateStoryComment
  """

  @type t :: %__MODULE__{
    text: String.t()
  }

  defstruct [:text]

  @doc """
The updated comment text.
"""
def text(%__MODULE__{text: value}), do: value

end
