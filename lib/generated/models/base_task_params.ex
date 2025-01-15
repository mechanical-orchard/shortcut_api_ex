defmodule Generated.Models.BaseTaskParams do
  @moduledoc """
  Request parameters for specifying how to pre-populate a task through a template.
  """

  @type t :: %__MODULE__{
    complete: boolean(),
        description: String.t(),
        external_id: String.t(),
        owner_ids: list(String.t())
  }

  defstruct [:complete, :description, :external_id, :owner_ids]

  @doc """
True/false boolean indicating whether the Task is completed. Defaults to false.
"""
def complete(%__MODULE__{complete: value}), do: value


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

end
