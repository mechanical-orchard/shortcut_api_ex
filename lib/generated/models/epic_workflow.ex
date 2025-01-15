defmodule Generated.Models.EpicWorkflow do
  @moduledoc """
  Epic Workflow is the array of defined Epic States. Epic Workflow can be queried using the API but must be updated in the Shortcut UI.
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        default_epic_state_id: integer(),
        entity_type: String.t(),
        epic_states: list(Generated.Models.EpicState.t()),
        id: integer(),
        updated_at: String.t()
  }

  defstruct [:created_at, :default_epic_state_id, :entity_type, :epic_states, :id, :updated_at]

  @doc """
The date the Epic Workflow was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The unique ID of the default Epic State that new Epics are assigned by default.
"""
def default_epic_state_id(%__MODULE__{default_epic_state_id: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
A map of the Epic States in this Epic Workflow.
"""
def epic_states(%__MODULE__{epic_states: value}), do: value


@doc """
The unique ID of the Epic Workflow.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The date the Epic Workflow was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
