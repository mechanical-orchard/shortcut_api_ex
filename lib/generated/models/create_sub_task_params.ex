defmodule Generated.Models.CreateSubTaskParams do
  @moduledoc """
  Generated struct for CreateSubTaskParams
  """

  @type t :: %__MODULE__{
    name: String.t()
  }

  defstruct [:name]

  @doc """
The name of the SubTask.
"""
def name(%__MODULE__{name: value}), do: value

end
