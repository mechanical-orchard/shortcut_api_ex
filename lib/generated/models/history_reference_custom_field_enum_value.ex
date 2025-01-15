defmodule Generated.Models.HistoryReferenceCustomFieldEnumValue do
  @moduledoc """
  A reference to a CustomField value asserted on a Story.
  """

  @type t :: %__MODULE__{
    entity_type: String.t(),
        enum_value_enabled: boolean(),
        field_enabled: boolean(),
        field_id: String.t(),
        field_name: String.t(),
        field_type: String.t(),
        id: any(),
        string_value: String.t()
  }

  defstruct [:entity_type, :enum_value_enabled, :field_enabled, :field_id, :field_name, :field_type, :id, :string_value]

  @doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
Whether or not the custom-field enum value is enabled.
"""
def enum_value_enabled(%__MODULE__{enum_value_enabled: value}), do: value


@doc """
Whether or not the custom-field is enabled.
"""
def field_enabled(%__MODULE__{field_enabled: value}), do: value


@doc """
The public-id of the parent custom-field of this enum value.
"""
def field_id(%__MODULE__{field_id: value}), do: value


@doc """
The name as it is displayed to the user of the parent custom-field of this enum value.
"""
def field_name(%__MODULE__{field_name: value}), do: value


@doc """
The type variety of the parent custom-field of this enum value.
"""
def field_type(%__MODULE__{field_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The custom-field enum value as a string.
"""
def string_value(%__MODULE__{string_value: value}), do: value

end
