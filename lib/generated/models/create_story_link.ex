defmodule Generated.Models.CreateStoryLink do
  @moduledoc """
  Generated struct for CreateStoryLink
  """

  @type t :: %__MODULE__{
    object_id: integer(),
        subject_id: integer(),
        verb: String.t()
  }

  defstruct [:object_id, :subject_id, :verb]

  @doc """
The ID of the object Story.
"""
def object_id(%__MODULE__{object_id: value}), do: value


@doc """
The ID of the subject Story.
"""
def subject_id(%__MODULE__{subject_id: value}), do: value


@doc """
The type of link.
"""
def verb(%__MODULE__{verb: value}), do: value

end
