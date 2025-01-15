defmodule Generated.Models.Workflow do
  @moduledoc """
  Workflow is the array of defined Workflow States. Workflow can be queried using the API but must be updated in the Shortcut UI.
  """

  @type t :: %__MODULE__{
    auto_assign_owner: boolean(),
        created_at: String.t(),
        default_state_id: integer(),
        description: String.t(),
        entity_type: String.t(),
        id: integer(),
        name: String.t(),
        project_ids: list(float()),
        states: list(Generated.Models.WorkflowState.t()),
        team_id: integer(),
        updated_at: String.t()
  }

  defstruct [:auto_assign_owner, :created_at, :default_state_id, :description, :entity_type, :id, :name, :project_ids, :states, :team_id, :updated_at]

  @doc """
Indicates if an owner is automatically assigned when an unowned story is started.
"""
def auto_assign_owner(%__MODULE__{auto_assign_owner: value}), do: value


@doc """
The date the Workflow was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The unique ID of the default state that new Stories are entered into.
"""
def default_state_id(%__MODULE__{default_state_id: value}), do: value


@doc """
A description of the workflow.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique ID of the Workflow.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the workflow.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
An array of IDs of projects within the Workflow.
"""
def project_ids(%__MODULE__{project_ids: value}), do: value


@doc """
A map of the states in this Workflow.
"""
def states(%__MODULE__{states: value}), do: value


@doc """
The ID of the team the workflow belongs to.
"""
def team_id(%__MODULE__{team_id: value}), do: value


@doc """
The date the Workflow was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
