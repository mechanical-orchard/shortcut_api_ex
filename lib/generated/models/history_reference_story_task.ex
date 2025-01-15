defmodule Generated.Models.HistoryReferenceStoryTask do
  @moduledoc """
  A reference to a Story Task.
  """

  @type t :: %__MODULE__{
    description: String.t(),
        entity_type: String.t(),
        id: any()
  }

  defstruct [:description, :entity_type, :id]

  @doc """
The description of the Story Task.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value

end
