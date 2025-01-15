defmodule Generated.Models.CreateEpicComment do
  @moduledoc """
  Generated struct for CreateEpicComment
  """

  @type t :: %__MODULE__{
    author_id: String.t(),
        created_at: String.t(),
        external_id: String.t(),
        text: String.t(),
        updated_at: String.t()
  }

  defstruct [:author_id, :created_at, :external_id, :text, :updated_at]

  @doc """
The Member ID of the Comment's author. Defaults to the user identified by the API token.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
Defaults to the time/date the comment is created, but can be set to reflect another date.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the comment has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The comment text.
"""
def text(%__MODULE__{text: value}), do: value


@doc """
Defaults to the time/date the comment is last updated, but can be set to reflect another date.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
