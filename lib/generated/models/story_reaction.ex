defmodule Generated.Models.StoryReaction do
  @moduledoc """
  Emoji reaction on a comment.
  """

  @type t :: %__MODULE__{
    emoji: String.t(),
        permission_ids: list(String.t())
  }

  defstruct [:emoji, :permission_ids]

  @doc """
Emoji text of the reaction.
"""
def emoji(%__MODULE__{emoji: value}), do: value


@doc """
Permissions who have reacted with this.
"""
def permission_ids(%__MODULE__{permission_ids: value}), do: value

end
