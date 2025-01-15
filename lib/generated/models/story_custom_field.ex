defmodule Generated.Models.StoryCustomField do
  @moduledoc """
  Generated struct for StoryCustomField
  """

  @type t :: %__MODULE__{
    field_id: String.t(),
        value: String.t(),
        value_id: String.t()
  }

  defstruct [:field_id, :value, :value_id]

  @doc """
The unique public ID for a CustomField.
"""
def field_id(%__MODULE__{field_id: value}), do: value


@doc """
A string representation of the value, if applicable.
"""
def value(%__MODULE__{value: value}), do: value


@doc """
The unique public ID for a CustomFieldEnumValue.
"""
def value_id(%__MODULE__{value_id: value}), do: value

end
