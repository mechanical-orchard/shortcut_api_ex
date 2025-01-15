defmodule Generated.Models.StoryComment do
  @moduledoc """
  A Comment is any note added within the Comment field of a Story.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        author_id: String.t(),
        blocker: boolean(),
        created_at: String.t(),
        deleted: boolean(),
        entity_type: String.t(),
        external_id: String.t(),
        group_mention_ids: list(String.t()),
        id: integer(),
        linked_to_slack: boolean(),
        member_mention_ids: list(String.t()),
        mention_ids: list(String.t()),
        parent_id: integer(),
        position: integer(),
        reactions: list(Generated.Models.StoryReaction.t()),
        story_id: integer(),
        text: String.t(),
        unblocks_parent: boolean(),
        updated_at: String.t()
  }

  defstruct [:app_url, :author_id, :blocker, :created_at, :deleted, :entity_type, :external_id, :group_mention_ids, :id, :linked_to_slack, :member_mention_ids, :mention_ids, :parent_id, :position, :reactions, :story_id, :text, :unblocks_parent, :updated_at]

  @doc """
The Shortcut application url for the Comment.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
The unique ID of the Member who is the Comment's author.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
Marks the comment as a blocker that can be surfaced to permissions or teams mentioned in the comment. Can only be used on a top-level comment.
"""
def blocker(%__MODULE__{blocker: value}), do: value


@doc """
The time/date when the Comment was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
True/false boolean indicating whether the Comment has been deleted.
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
The unique IDs of the Group who are mentioned in the Comment.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The unique ID of the Comment.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
Whether the Comment is currently the root of a thread that is linked to Slack.
"""
def linked_to_slack(%__MODULE__{linked_to_slack: value}), do: value


@doc """
The unique IDs of the Member who are mentioned in the Comment.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The ID of the parent Comment this Comment is threaded under.
"""
def parent_id(%__MODULE__{parent_id: value}), do: value


@doc """
The Comments numerical position in the list from oldest to newest.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
A set of Reactions to this Comment.
"""
def reactions(%__MODULE__{reactions: value}), do: value


@doc """
The ID of the Story on which the Comment appears.
"""
def story_id(%__MODULE__{story_id: value}), do: value


@doc """
The text of the Comment. In the case that the Comment has been deleted, this field can be set to nil.
"""
def text(%__MODULE__{text: value}), do: value


@doc """
Marks the comment as an unblocker to its  blocker parent. Can only be set on a threaded comment who has a parent with `blocker` set.
"""
def unblocks_parent(%__MODULE__{unblocks_parent: value}), do: value


@doc """
The time/date when the Comment was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
