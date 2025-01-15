defmodule Generated.Models.HistoryReferenceBranch do
  @moduledoc """
  A reference to a VCS Branch.
  """

  @type t :: %__MODULE__{
    entity_type: String.t(),
        id: any(),
        name: String.t(),
        url: String.t()
  }

  defstruct [:entity_type, :id, :name, :url]

  @doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the entity referenced.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The external URL for the Branch.
"""
def url(%__MODULE__{url: value}), do: value

end
