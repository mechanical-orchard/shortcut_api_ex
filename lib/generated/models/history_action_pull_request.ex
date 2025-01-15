defmodule Generated.Models.HistoryActionPullRequest do
  @moduledoc """
  An action representing various operations for a Pull Request.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        entity_type: String.t(),
        id: integer(),
        number: integer(),
        title: String.t(),
        url: String.t()
  }

  defstruct [:action, :entity_type, :id, :number, :title, :url]

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
The VCS Repository-specific ID for the Pull Request.
"""
def number(%__MODULE__{number: value}), do: value


@doc """
The title of the Pull Request.
"""
def title(%__MODULE__{title: value}), do: value


@doc """
The URL from the provider of the VCS Pull Request.
"""
def url(%__MODULE__{url: value}), do: value

end
