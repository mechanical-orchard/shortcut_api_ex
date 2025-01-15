defmodule Generated.Models.CustomField do
  @moduledoc """
  Generated struct for CustomField
  """

  @type t :: %__MODULE__{
    canonical_name: String.t(),
        created_at: String.t(),
        description: String.t(),
        enabled: boolean(),
        entity_type: String.t(),
        field_type: String.t(),
        fixed_position: boolean(),
        icon_set_identifier: String.t(),
        id: String.t(),
        name: String.t(),
        position: integer(),
        story_types: list(String.t()),
        updated_at: String.t(),
        values: list(Generated.Models.CustomFieldEnumValue.t())
  }

  defstruct [:canonical_name, :created_at, :description, :enabled, :entity_type, :field_type, :fixed_position, :icon_set_identifier, :id, :name, :position, :story_types, :updated_at, :values]

  @doc """
The canonical name for a Shortcut-defined field.
"""
def canonical_name(%__MODULE__{canonical_name: value}), do: value


@doc """
The instant when this CustomField was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of the CustomField
"""
def description(%__MODULE__{description: value}), do: value


@doc """
When true, the CustomField can be applied to entities in the Workspace.
"""
def enabled(%__MODULE__{enabled: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The type of Custom Field, eg. 'enum'.
"""
def field_type(%__MODULE__{field_type: value}), do: value


@doc """
When true, the CustomFieldEnumValues may not be reordered.
"""
def fixed_position(%__MODULE__{fixed_position: value}), do: value


@doc """
A string that represents the icon that corresponds to this custom field.
"""
def icon_set_identifier(%__MODULE__{icon_set_identifier: value}), do: value


@doc """
The unique public ID for the CustomField.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the Custom Field.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
An integer indicating the position of this Custom Field with respect to the other CustomField
"""
def position(%__MODULE__{position: value}), do: value


@doc """
The types of stories this CustomField is scoped to.
"""
def story_types(%__MODULE__{story_types: value}), do: value


@doc """
The instant when this CustomField was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
A collection of legal values for a CustomField.
"""
def values(%__MODULE__{values: value}), do: value

end
