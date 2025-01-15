defmodule Generated.Models.CreateCategory do
  @moduledoc """
  Generated struct for CreateCategory
  """

  @type t :: %__MODULE__{
    color: String.t(),
        external_id: String.t(),
        name: String.t(),
        type: any()
  }

  defstruct [:color, :external_id, :name, :type]

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


@doc """
The type of entity this Category is associated with; currently Milestone or Objective is the only type of Category.
"""
def type(%__MODULE__{type: value}), do: value

end
