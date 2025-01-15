defmodule Generated.Models.UpdateLabel do
  @moduledoc """
  Generated struct for UpdateLabel
  """

  @type t :: %__MODULE__{
    archived: boolean(),
        color: String.t(),
        description: String.t(),
        name: String.t()
  }

  defstruct [:archived, :color, :description, :name]

  @doc """
A true/false boolean indicating if the Label has been archived.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The hex color to be displayed with the Label (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The new description of the label.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The new name of the label.
"""
def name(%__MODULE__{name: value}), do: value

end
