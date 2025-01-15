defmodule Generated.Models.Task do
  @moduledoc """
  A Task on a Story.
  """

  @type t :: %__MODULE__{
    complete: boolean(),
        completed_at: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        external_id: String.t(),
        group_mention_ids: list(String.t()),
        id: integer(),
        member_mention_ids: list(String.t()),
        mention_ids: list(String.t()),
        owner_ids: list(String.t()),
        position: integer(),
        story_id: integer(),
        updated_at: String.t()
  }

  defstruct [:complete, :completed_at, :created_at, :description, :entity_type, :external_id, :group_mention_ids, :id, :member_mention_ids, :mention_ids, :owner_ids, :position, :story_id, :updated_at]

  @doc """
True/false boolean indicating whether the Task has been completed.
"""
def complete(%__MODULE__{complete: value}), do: value


@doc """
The time/date the Task was completed.
"""
def completed_at(%__MODULE__{completed_at: value}), do: value


@doc """
The time/date the Task was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
Full text of the Task.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Task has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs of Groups mentioned in this Task.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The unique ID of the Task.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
An array of UUIDs of Members mentioned in this Task.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
An array of UUIDs of the Owners of this Task.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The number corresponding to the Task's position within a list of Tasks on a Story.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
The unique identifier of the parent Story.
"""
def story_id(%__MODULE__{story_id: value}), do: value


@doc """
The time/date the Task was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
