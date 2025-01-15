defmodule Generated.Models.LinkedFile do
  @moduledoc """
  Linked files are stored on a third-party website and linked to one or more Stories. Shortcut currently supports linking files from Google Drive, Dropbox, Box, and by URL.
  """

  @type t :: %__MODULE__{
    content_type: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        group_mention_ids: list(String.t()),
        id: integer(),
        member_mention_ids: list(String.t()),
        mention_ids: list(String.t()),
        name: String.t(),
        size: integer(),
        story_ids: list(integer()),
        thumbnail_url: String.t(),
        type: String.t(),
        updated_at: String.t(),
        uploader_id: String.t(),
        url: String.t()
  }

  defstruct [:content_type, :created_at, :description, :entity_type, :group_mention_ids, :id, :member_mention_ids, :mention_ids, :name, :size, :story_ids, :thumbnail_url, :type, :updated_at, :uploader_id, :url]

  @doc """
The content type of the image (e.g. txt/plain).
"""
def content_type(%__MODULE__{content_type: value}), do: value


@doc """
The time/date the LinkedFile was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The description of the file.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The groups that are mentioned in the description of the file.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The unique identifier for the file.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The members that are mentioned in the description of the file.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The name of the linked file.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The filesize, if the integration provided it.
"""
def size(%__MODULE__{size: value}), do: value


@doc """
The IDs of the stories this file is attached to.
"""
def story_ids(%__MODULE__{story_ids: value}), do: value


@doc """
The URL of the file thumbnail, if the integration provided it.
"""
def thumbnail_url(%__MODULE__{thumbnail_url: value}), do: value


@doc """
The integration type (e.g. google, dropbox, box).
"""
def type(%__MODULE__{type: value}), do: value


@doc """
The time/date the LinkedFile was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The UUID of the member that uploaded the file.
"""
def uploader_id(%__MODULE__{uploader_id: value}), do: value


@doc """
The URL of the file.
"""
def url(%__MODULE__{url: value}), do: value

end
