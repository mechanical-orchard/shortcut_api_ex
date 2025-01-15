defmodule Generated.Models.CreateEntityTemplate do
  @moduledoc """
  Request parameters for creating an entirely new entity template.
  """

  @type t :: %__MODULE__{
    author_id: String.t(),
        name: String.t(),
        story_contents: Generated.Models.CreateStoryContents.t()
  }

  defstruct [:author_id, :name, :story_contents]

  @doc """
The id of the user creating this template.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
The name of the new entity template
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field story_contents
"""
def story_contents(%__MODULE__{story_contents: value}), do: value

end
