defmodule Generated.Models.History do
  @moduledoc """
  A history item is a group of actions that represent a transactional change to a Story.
  """

  @type t :: %__MODULE__{
    actions: list(any()),
        automation_id: String.t(),
        changed_at: String.t(),
        external_id: String.t(),
        id: String.t(),
        member_id: String.t(),
        primary_id: any(),
        references: list(any()),
        version: String.t(),
        webhook_id: String.t()
  }

  defstruct [:actions, :automation_id, :changed_at, :external_id, :id, :member_id, :primary_id, :references, :version, :webhook_id]

  @doc """
An array of actions that were performed for the change.
"""
def actions(%__MODULE__{actions: value}), do: value


@doc """
The ID of the automation that performed the change.
"""
def automation_id(%__MODULE__{automation_id: value}), do: value


@doc """
The date when the change occurred.
"""
def changed_at(%__MODULE__{changed_at: value}), do: value


@doc """
The ID of the webhook that handled the change.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The ID representing the change for the story.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The ID of the member who performed the change.
"""
def member_id(%__MODULE__{member_id: value}), do: value


@doc """
The ID of the primary entity that has changed, if applicable.
"""
def primary_id(%__MODULE__{primary_id: value}), do: value


@doc """
An array of objects affected by the change. Reference objects provide basic information for the entities reference in the history actions. Some have specific fields, but they always contain an id, entity_type, and a name.
"""
def references(%__MODULE__{references: value}), do: value


@doc """
The version of the change format.
"""
def version(%__MODULE__{version: value}), do: value


@doc """
The ID of the webhook that handled the change.
"""
def webhook_id(%__MODULE__{webhook_id: value}), do: value

end
