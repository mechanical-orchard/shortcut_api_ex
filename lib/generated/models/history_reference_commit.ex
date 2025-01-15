defmodule Generated.Models.HistoryReferenceCommit do
  @moduledoc """
  A reference to a VCS Commit.
  """

  @type t :: %__MODULE__{
    entity_type: String.t(),
        id: any(),
        message: String.t(),
        url: String.t()
  }

  defstruct [:entity_type, :id, :message, :url]

  @doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The message from the Commit.
"""
def message(%__MODULE__{message: value}), do: value


@doc """
The external URL for the Branch.
"""
def url(%__MODULE__{url: value}), do: value

end
