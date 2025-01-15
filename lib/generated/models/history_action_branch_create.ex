defmodule Generated.Models.HistoryActionBranchCreate do
  @moduledoc """
  An action representing a VCS Branch being created.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        entity_type: String.t(),
        id: integer(),
        name: String.t(),
        url: String.t()
  }

  defstruct [:action, :entity_type, :id, :name, :url]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the VCS Branch that was pushed
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The URL from the provider of the VCS Branch that was pushed
"""
def url(%__MODULE__{url: value}), do: value

end
