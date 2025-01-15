defmodule Generated.Models.UploadedFile do
  @moduledoc """
  An UploadedFile is any document uploaded to your Shortcut Workspace. Files attached from a third-party service are different: see the Linked Files endpoint.
  """

  @type t :: %__MODULE__{
    content_type: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        external_id: String.t(),
        filename: String.t(),
        group_mention_ids: list(String.t()),
        id: integer(),
        member_mention_ids: list(String.t()),
        mention_ids: list(String.t()),
        name: String.t(),
        size: integer(),
        story_ids: list(integer()),
        thumbnail_url: String.t(),
        updated_at: String.t(),
        uploader_id: String.t(),
        url: String.t()
  }

  defstruct [:content_type, :created_at, :description, :entity_type, :external_id, :filename, :group_mention_ids, :id, :member_mention_ids, :mention_ids, :name, :size, :story_ids, :thumbnail_url, :updated_at, :uploader_id, :url]

  @doc """
Free form string corresponding to a text or image file.
"""
def content_type(%__MODULE__{content_type: value}), do: value


@doc """
The time/date that the file was created.
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
This field can be set to another unique ID. In the case that the File has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The name assigned to the file in Shortcut upon upload.
"""
def filename(%__MODULE__{filename: value}), do: value


@doc """
The unique IDs of the Groups who are mentioned in the file description.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The unique ID for the file.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The unique IDs of the Members who are mentioned in the file description.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The optional User-specified name of the file.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The size of the file.
"""
def size(%__MODULE__{size: value}), do: value


@doc """
The unique IDs of the Stories associated with this file.
"""
def story_ids(%__MODULE__{story_ids: value}), do: value


@doc """
The url where the thumbnail of the file can be found in Shortcut.
"""
def thumbnail_url(%__MODULE__{thumbnail_url: value}), do: value


@doc """
The time/date that the file was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The unique ID of the Member who uploaded the file.
"""
def uploader_id(%__MODULE__{uploader_id: value}), do: value


@doc """
The URL for the file.
"""
def url(%__MODULE__{url: value}), do: value

end
