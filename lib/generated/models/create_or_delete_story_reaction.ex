defmodule Generated.Models.CreateOrDeleteStoryReaction do
  @moduledoc """
  Generated struct for CreateOrDeleteStoryReaction
  """

  @type t :: %__MODULE__{
    emoji: String.t()
  }

  defstruct [:emoji]

  @doc """
The emoji short-code to add / remove. E.g. `:thumbsup::skin-tone-4:`.
"""
def emoji(%__MODULE__{emoji: value}), do: value

end
