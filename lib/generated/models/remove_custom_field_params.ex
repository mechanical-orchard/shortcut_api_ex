defmodule Generated.Models.RemoveCustomFieldParams do
  @moduledoc """
  Generated struct for RemoveCustomFieldParams
  """

  @type t :: %__MODULE__{
    field_id: String.t()
  }

  defstruct [:field_id]

  @doc """
The unique public ID for the CustomField.
"""
def field_id(%__MODULE__{field_id: value}), do: value

end
