defmodule Generated.Models.CustomFieldEnumValue do
  @moduledoc """
  Generated struct for CustomFieldEnumValue
  """

  @type t :: %__MODULE__{
    color_key: String.t(),
        enabled: boolean(),
        entity_type: String.t(),
        id: String.t(),
        position: integer(),
        value: String.t()
  }

  defstruct [:color_key, :enabled, :entity_type, :id, :position, :value]

  @doc """
A color key associated with this CustomFieldEnumValue.
"""
def color_key(%__MODULE__{color_key: value}), do: value


@doc """
When true, the CustomFieldEnumValue can be selected for the CustomField.
"""
def enabled(%__MODULE__{enabled: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique public ID for the Custom Field.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
An integer indicating the position of this Value with respect to the other CustomFieldEnumValues in the enumeration.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
A string value within the domain of this Custom Field.
"""
def value(%__MODULE__{value: value}), do: value

end
