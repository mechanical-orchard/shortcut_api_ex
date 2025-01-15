defmodule Generated.Models.UpdateTask do
  @moduledoc """
  Generated struct for UpdateTask
  """

  @type t :: %__MODULE__{
    after_id: integer(),
        before_id: integer(),
        complete: boolean(),
        description: String.t(),
        owner_ids: list(String.t())
  }

  defstruct [:after_id, :before_id, :complete, :description, :owner_ids]

  @doc """
Move task after this task ID.
"""
def after_id(%__MODULE__{after_id: value}), do: value


@doc """
Move task before this task ID.
"""
def before_id(%__MODULE__{before_id: value}), do: value


@doc """
A true/false boolean indicating whether the task is complete.
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
The Task's description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
An array of UUIDs of the owners of this story.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value

end
