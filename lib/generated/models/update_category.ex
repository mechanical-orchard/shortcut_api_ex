defmodule Generated.Models.UpdateCategory do
  @moduledoc """
  Generated struct for UpdateCategory
  """

  @type t :: %__MODULE__{
    archived: boolean(),
        color: String.t(),
        name: String.t()
  }

  defstruct [:archived, :color, :name]

  @doc """
A true/false boolean indicating if the Category has been archived.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The hex color to be displayed with the Category (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The new name of the Category.
"""
def name(%__MODULE__{name: value}), do: value

end
