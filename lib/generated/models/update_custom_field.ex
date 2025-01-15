defmodule Generated.Models.UpdateCustomField do
  @moduledoc """
  Generated struct for UpdateCustomField
  """

  @type t :: %__MODULE__{
    after_id: String.t(),
        before_id: String.t(),
        description: String.t(),
        enabled: boolean(),
        icon_set_identifier: String.t(),
        name: String.t(),
        values: list(Generated.Models.UpdateCustomFieldEnumValue.t())
  }

  defstruct [:after_id, :before_id, :description, :enabled, :icon_set_identifier, :name, :values]

  @doc """
The ID of the CustomField we want to move this CustomField after.
"""
def after_id(%__MODULE__{after_id: value}), do: value


@doc """
The ID of the CustomField we want to move this CustomField before.
"""
def before_id(%__MODULE__{before_id: value}), do: value


@doc """
A description of the purpose of this field.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
Indicates whether the Field is enabled for the Workspace. Only enabled fields can be applied to Stories.
"""
def enabled(%__MODULE__{enabled: value}), do: value


@doc """
A frontend-controlled string that represents the icon for this custom field.
"""
def icon_set_identifier(%__MODULE__{icon_set_identifier: value}), do: value


@doc """
A collection of objects representing reporting periods for years.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
A collection of EnumValue objects representing the values in the domain of some Custom Field.
"""
def values(%__MODULE__{values: value}), do: value

end
