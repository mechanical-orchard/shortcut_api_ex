defmodule Generated.Models.UpdateComment do
  @moduledoc """
  Generated struct for UpdateComment
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
