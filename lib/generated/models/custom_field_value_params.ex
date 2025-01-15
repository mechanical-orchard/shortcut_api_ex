defmodule Generated.Models.CustomFieldValueParams do
  @moduledoc """
  Generated struct for CustomFieldValueParams
  """

  @type t :: %__MODULE__{
    field_id: String.t(),
        value: String.t(),
        value_id: String.t()
  }

  defstruct [:field_id, :value, :value_id]

  @doc """
The unique public ID for the CustomField.
"""
def field_id(%__MODULE__{field_id: value}), do: value


@doc """
A literal value for the CustomField. Currently ignored.
"""
def value(%__MODULE__{value: value}), do: value


@doc """
The unique public ID for the CustomFieldEnumValue.
"""
def value_id(%__MODULE__{value_id: value}), do: value

end
