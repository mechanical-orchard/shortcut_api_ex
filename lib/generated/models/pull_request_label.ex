defmodule Generated.Models.PullRequestLabel do
  @moduledoc """
  Corresponds to a VCS Label associated with a Pull Request.
  """

  @type t :: %__MODULE__{
    color: String.t(),
        description: String.t(),
        entity_type: String.t(),
        id: integer(),
        name: String.t()
  }

  defstruct [:color, :description, :entity_type, :id, :name]

  @doc """
The color of the VCS label.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The description of the VCS label.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique ID of the VCS Label.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the VCS label.
"""
def name(%__MODULE__{name: value}), do: value

end
