defmodule Generated.Models.UpdateKeyResult do
  @moduledoc """
  Generated struct for UpdateKeyResult
  """

  @type t :: %__MODULE__{
    initial_observed_value: Generated.Models.KeyResultValue.t(),
        name: String.t(),
        observed_value: Generated.Models.KeyResultValue.t(),
        target_value: Generated.Models.KeyResultValue.t()
  }

  defstruct [:initial_observed_value, :name, :observed_value, :target_value]

  @doc """
Field initial_observed_value
"""
def initial_observed_value(%__MODULE__{initial_observed_value: value}), do: value


@doc """
The name of the Key Result.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field observed_value
"""
def observed_value(%__MODULE__{observed_value: value}), do: value


@doc """
Field target_value
"""
def target_value(%__MODULE__{target_value: value}), do: value

end
