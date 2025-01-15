defmodule Generated.Models.CreateStoryLinkParams do
  @moduledoc """
  Request parameters for creating a Story Link within a Story.
  """

  @type t :: %__MODULE__{
    object_id: integer(),
        subject_id: integer(),
        verb: String.t()
  }

  defstruct [:object_id, :subject_id, :verb]

  @doc """
The unique ID of the Story defined as object.
"""
def object_id(%__MODULE__{object_id: value}), do: value


@doc """
The unique ID of the Story defined as subject.
"""
def subject_id(%__MODULE__{subject_id: value}), do: value


@doc """
How the subject Story acts on the object Story. This can be "blocks", "duplicates", or "relates to".
"""
def verb(%__MODULE__{verb: value}), do: value

end
