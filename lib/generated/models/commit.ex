defmodule Generated.Models.Commit do
  @moduledoc """
  Commit refers to a VCS commit and all associated details.
  """

  @type t :: %__MODULE__{
    author_email: String.t(),
        author_id: String.t(),
        author_identity: Generated.Models.Identity.t(),
        created_at: String.t(),
        entity_type: String.t(),
        hash: String.t(),
        id: integer(),
        message: String.t(),
        repository_id: integer(),
        timestamp: String.t(),
        updated_at: String.t(),
        url: String.t()
  }

  defstruct [:author_email, :author_id, :author_identity, :created_at, :entity_type, :hash, :id, :message, :repository_id, :timestamp, :updated_at, :url]

  @doc """
The email address of the VCS user that authored the Commit.
"""
def author_email(%__MODULE__{author_email: value}), do: value


@doc """
The ID of the Member that authored the Commit, if known.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
Field author_identity
"""
def author_identity(%__MODULE__{author_identity: value}), do: value


@doc """
The time/date the Commit was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The Commit hash.
"""
def hash(%__MODULE__{hash: value}), do: value


@doc """
The unique ID of the Commit.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The Commit message.
"""
def message(%__MODULE__{message: value}), do: value


@doc """
The ID of the Repository that contains the Commit.
"""
def repository_id(%__MODULE__{repository_id: value}), do: value


@doc """
The time/date the Commit was pushed.
"""
def timestamp(%__MODULE__{timestamp: value}), do: value


@doc """
The time/date the Commit was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The URL of the Commit.
"""
def url(%__MODULE__{url: value}), do: value

end
