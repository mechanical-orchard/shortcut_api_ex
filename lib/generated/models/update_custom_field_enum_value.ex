defmodule Generated.Models.UpdateCustomFieldEnumValue do
  @moduledoc """
  Generated struct for UpdateCustomFieldEnumValue
  """

  @type t :: %__MODULE__{
    color_key: String.t(),
        enabled: boolean(),
        id: String.t(),
        value: String.t()
  }

  defstruct [:color_key, :enabled, :id, :value]

  @doc """
A color key associated with this EnumValue within the CustomField's domain.
"""
def color_key(%__MODULE__{color_key: value}), do: value


@doc """
Whether this EnumValue is enabled for its CustomField or not. Leaving this key out of the request leaves the current enabled state untouched.
"""
def enabled(%__MODULE__{enabled: value}), do: value


@doc """
The unique ID of an existing EnumValue within the CustomField's domain.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
A string value within the domain of this Custom Field.
"""
def value(%__MODULE__{value: value}), do: value

end
