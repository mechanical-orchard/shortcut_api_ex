defmodule Generated.Models.KeyResultValue do
  @moduledoc """
  The starting value of the Key Result.
  """

  @type t :: %__MODULE__{
    boolean_value: boolean(),
        numeric_value: String.t()
  }

  defstruct [:boolean_value, :numeric_value]

  @doc """
The boolean value.
"""
def boolean_value(%__MODULE__{boolean_value: value}), do: value


@doc """
The numeric value, as a decimal string. No more than two decimal places are allowed.
"""
def numeric_value(%__MODULE__{numeric_value: value}), do: value

end
