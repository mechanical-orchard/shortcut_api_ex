defmodule Generated.Models.CreateCategoryParams do
  @moduledoc """
  Request parameters for creating a Category with a Objective.
  """

  @type t :: %__MODULE__{
    color: String.t(),
        external_id: String.t(),
        name: String.t()
  }

  defstruct [:color, :external_id, :name]

  @doc """
The hex color to be displayed with the Category (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Category has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The name of the new Category.
"""
def name(%__MODULE__{name: value}), do: value

end
