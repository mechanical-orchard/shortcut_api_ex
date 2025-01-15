defmodule Generated.Models.CreateTaskParams do
  @moduledoc """
  Request parameters for creating a Task on a Story.
  """

  @type t :: %__MODULE__{
    complete: boolean(),
        created_at: String.t(),
        description: String.t(),
        external_id: String.t(),
        owner_ids: list(String.t()),
        updated_at: String.t()
  }

  defstruct [:complete, :created_at, :description, :external_id, :owner_ids, :updated_at]

  @doc """
True/false boolean indicating whether the Task is completed. Defaults to false.
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
Defaults to the time/date the Task is created but can be set to reflect another creation time/date.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The Task description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Task has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs for any members you want to add as Owners on this new Task.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
Defaults to the time/date the Task is created in Shortcut but can be set to reflect another time/date.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
