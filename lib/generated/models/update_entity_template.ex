defmodule Generated.Models.UpdateEntityTemplate do
  @moduledoc """
  Request parameters for changing either a template's name or any of
  the attributes it is designed to pre-populate.
  """

  @type t :: %__MODULE__{
    name: String.t(),
        story_contents: Generated.Models.UpdateStoryContents.t()
  }

  defstruct [:name, :story_contents]

  @doc """
The updated template name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field story_contents
"""
def story_contents(%__MODULE__{story_contents: value}), do: value

end
