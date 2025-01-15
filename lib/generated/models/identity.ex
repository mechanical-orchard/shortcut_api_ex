defmodule Generated.Models.Identity do
  @moduledoc """
  The Identity of the VCS user that authored the Commit.
  """

  @type t :: %__MODULE__{
    entity_type: String.t(),
        name: String.t(),
        type: String.t()
  }

  defstruct [:entity_type, :name, :type]

  @doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This is your login in VCS.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The service this Identity is for.
"""
def type(%__MODULE__{type: value}), do: value

end
