defmodule Generated.Models.UpdateLinkedFile do
  @moduledoc """
  Generated struct for UpdateLinkedFile
  """

  @type t :: %__MODULE__{
    description: String.t(),
        name: String.t(),
        size: integer(),
        story_id: integer(),
        thumbnail_url: String.t(),
        type: String.t(),
        uploader_id: String.t(),
        url: String.t()
  }

  defstruct [:description, :name, :size, :story_id, :thumbnail_url, :type, :uploader_id, :url]

  @doc """
The description of the file.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The name of the file.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The filesize, if the integration provided it.
"""
def size(%__MODULE__{size: value}), do: value


@doc """
The ID of the linked story.
"""
def story_id(%__MODULE__{story_id: value}), do: value


@doc """
The URL of the thumbnail, if the integration provided it.
"""
def thumbnail_url(%__MODULE__{thumbnail_url: value}), do: value


@doc """
The integration type of the file (e.g. google, dropbox, box).
"""
def type(%__MODULE__{type: value}), do: value


@doc """
The UUID of the member that uploaded the file.
"""
def uploader_id(%__MODULE__{uploader_id: value}), do: value


@doc """
The URL of linked file.
"""
def url(%__MODULE__{url: value}), do: value

end
