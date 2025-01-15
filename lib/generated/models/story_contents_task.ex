defmodule Generated.Models.StoryContentsTask do
  @moduledoc """
  Generated struct for StoryContentsTask
  """

  @type t :: %__MODULE__{
    complete: boolean(),
        description: String.t(),
        external_id: String.t(),
        owner_ids: list(String.t()),
        position: integer()
  }

  defstruct [:complete, :description, :external_id, :owner_ids, :position]

  @doc """
True/false boolean indicating whether the Task has been completed.
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
Full text of the Task.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Task has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs of the Owners of this Task.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The number corresponding to the Task's position within a list of Tasks on a Story.
"""
def position(%__MODULE__{position: value}), do: value

end
