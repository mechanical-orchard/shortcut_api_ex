defmodule Generated.Models.ThreadedComment do
  @moduledoc """
  Comments associated with Epic Discussions.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        author_id: String.t(),
        comments: list(Generated.Models.ThreadedComment.t()),
        created_at: String.t(),
        deleted: boolean(),
        entity_type: String.t(),
        external_id: String.t(),
        group_mention_ids: list(String.t()),
        id: integer(),
        member_mention_ids: list(String.t()),
        mention_ids: list(String.t()),
        text: String.t(),
        updated_at: String.t()
  }

  defstruct [:app_url, :author_id, :comments, :created_at, :deleted, :entity_type, :external_id, :group_mention_ids, :id, :member_mention_ids, :mention_ids, :text, :updated_at]

  @doc """
The Shortcut application url for the Comment.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
The unique ID of the Member that authored the Comment.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
A nested array of threaded comments.
"""
def comments(%__MODULE__{comments: value}), do: value


@doc """
The time/date the Comment was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
True/false boolean indicating whether the Comment is deleted.
"""
def deleted(%__MODULE__{deleted: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Comment has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of Group IDs that have been mentioned in this Comment.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The unique ID of the Comment.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
An array of Member IDs that have been mentioned in this Comment.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The text of the Comment.
"""
def text(%__MODULE__{text: value}), do: value


@doc """
The time/date the Comment was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
