defmodule Generated.Models.CreateLabelParams do
  @moduledoc """
  Request parameters for creating a Label on a Shortcut Story.
  """

  @type t :: %__MODULE__{
    color: String.t(),
        description: String.t(),
        external_id: String.t(),
        name: String.t()
  }

  defstruct [:color, :description, :external_id, :name]

  @doc """
The hex color to be displayed with the Label (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The description of the new Label.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Label has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The name of the new Label.
"""
def name(%__MODULE__{name: value}), do: value

end
