defmodule Generated.Models.RemoveLabelParams do
  @moduledoc """
  Request parameters for removing a Label from a Shortcut Story.
  """

  @type t :: %__MODULE__{
    name: String.t()
  }

  defstruct [:name]

  @doc """
The name of the new Label to remove.
"""
def name(%__MODULE__{name: value}), do: value

end
