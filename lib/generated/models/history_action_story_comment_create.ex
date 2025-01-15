defmodule Generated.Models.HistoryActionStoryCommentCreate do
  @moduledoc """
  An action representing a Story Comment being created.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        app_url: String.t(),
        author_id: String.t(),
        entity_type: String.t(),
        id: integer(),
        text: String.t()
  }

  defstruct [:action, :app_url, :author_id, :entity_type, :id, :text]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The application URL of the Story Comment.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
The Member ID of who created the Story Comment.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The text of the Story Comment.
"""
def text(%__MODULE__{text: value}), do: value

end
