defmodule Generated.Models.SearchStories do
  @moduledoc """
  Generated struct for SearchStories
  """

  @type t :: %__MODULE__{
    archived: boolean(),
        completed_at_end: String.t(),
        completed_at_start: String.t(),
        created_at_end: String.t(),
        created_at_start: String.t(),
        deadline_end: String.t(),
        deadline_start: String.t(),
        epic_id: integer(),
        epic_ids: list(integer()),
        estimate: integer(),
        external_id: String.t(),
        group_id: String.t(),
        group_ids: list(String.t()),
        includes_description: boolean(),
        iteration_id: integer(),
        iteration_ids: list(integer()),
        label_ids: list(integer()),
        label_name: String.t(),
        owner_id: String.t(),
        owner_ids: list(String.t()),
        project_id: integer(),
        project_ids: list(integer()),
        requested_by_id: String.t(),
        story_type: String.t(),
        updated_at_end: String.t(),
        updated_at_start: String.t(),
        workflow_state_id: integer(),
        workflow_state_types: list(String.t())
  }

  defstruct [:archived, :completed_at_end, :completed_at_start, :created_at_end, :created_at_start, :deadline_end, :deadline_start, :epic_id, :epic_ids, :estimate, :external_id, :group_id, :group_ids, :includes_description, :iteration_id, :iteration_ids, :label_ids, :label_name, :owner_id, :owner_ids, :project_id, :project_ids, :requested_by_id, :story_type, :updated_at_end, :updated_at_start, :workflow_state_id, :workflow_state_types]

  @doc """
A true/false boolean indicating whether the Story is in archived state.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
Stories should have been completed on or before this date.
"""
def completed_at_end(%__MODULE__{completed_at_end: value}), do: value


@doc """
Stories should have been completed on or after this date.
"""
def completed_at_start(%__MODULE__{completed_at_start: value}), do: value


@doc """
Stories should have been created on or before this date.
"""
def created_at_end(%__MODULE__{created_at_end: value}), do: value


@doc """
Stories should have been created on or after this date.
"""
def created_at_start(%__MODULE__{created_at_start: value}), do: value


@doc """
Stories should have a deadline on or before this date.
"""
def deadline_end(%__MODULE__{deadline_end: value}), do: value


@doc """
Stories should have a deadline on or after this date.
"""
def deadline_start(%__MODULE__{deadline_start: value}), do: value


@doc """
The Epic IDs that may be associated with the Stories.
"""
def epic_id(%__MODULE__{epic_id: value}), do: value


@doc """
The Epic IDs that may be associated with the Stories.
"""
def epic_ids(%__MODULE__{epic_ids: value}), do: value


@doc """
The number of estimate points associate with the Stories.
"""
def estimate(%__MODULE__{estimate: value}), do: value


@doc """
An ID or URL that references an external resource. Useful during imports.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The Group ID that is associated with the Stories
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
The Group IDs that are associated with the Stories
"""
def group_ids(%__MODULE__{group_ids: value}), do: value


@doc """
Whether to include the story description in the response.
"""
def includes_description(%__MODULE__{includes_description: value}), do: value


@doc """
The Iteration ID that may be associated with the Stories.
"""
def iteration_id(%__MODULE__{iteration_id: value}), do: value


@doc """
The Iteration IDs that may be associated with the Stories.
"""
def iteration_ids(%__MODULE__{iteration_ids: value}), do: value


@doc """
The Label IDs that may be associated with the Stories.
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
The name of any associated Labels.
"""
def label_name(%__MODULE__{label_name: value}), do: value


@doc """
An array of UUIDs for any Users who may be Owners of the Stories.
"""
def owner_id(%__MODULE__{owner_id: value}), do: value


@doc """
An array of UUIDs for any Users who may be Owners of the Stories.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
The IDs for the Projects the Stories may be assigned to.
"""
def project_id(%__MODULE__{project_id: value}), do: value


@doc """
The IDs for the Projects the Stories may be assigned to.
"""
def project_ids(%__MODULE__{project_ids: value}), do: value


@doc """
The UUID of any Users who may have requested the Stories.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
The type of Stories that you want returned.
"""
def story_type(%__MODULE__{story_type: value}), do: value


@doc """
Stories should have been updated on or before this date.
"""
def updated_at_end(%__MODULE__{updated_at_end: value}), do: value


@doc """
Stories should have been updated on or after this date.
"""
def updated_at_start(%__MODULE__{updated_at_start: value}), do: value


@doc """
The unique IDs of the specific Workflow States that the Stories should be in.
"""
def workflow_state_id(%__MODULE__{workflow_state_id: value}), do: value


@doc """
The type of Workflow State the Stories may be in.
"""
def workflow_state_types(%__MODULE__{workflow_state_types: value}), do: value

end
