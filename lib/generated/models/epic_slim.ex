defmodule Generated.Models.EpicSlim do
  @moduledoc """
  EpicSlim represents the same resource as an Epic but is more light-weight, including all Epic fields except the comments array. The description string can be optionally included. Use the [Get Epic](#Get-Epic) endpoint to fetch the unabridged payload for an Epic.
  """

  @type t :: %__MODULE__{
    requested_by_id: String.t(),
        group_mention_ids: list(String.t()),
        created_at: String.t(),
        entity_type: String.t(),
        started_at: String.t(),
        archived: boolean(),
        epic_state_id: integer(),
        objective_ids: list(integer()),
        productboard_id: String.t(),
        associated_groups: list(Generated.Models.EpicAssociatedGroup.t()),
        state: String.t(),
        mention_ids: list(String.t()),
        completed_at: String.t(),
        deadline: String.t(),
        labels: list(Generated.Models.LabelSlim.t()),
        external_id: String.t(),
        owner_ids: list(String.t()),
        label_ids: list(integer()),
        productboard_plugin_id: String.t(),
        stories_without_projects: integer(),
        started_at_override: String.t(),
        project_ids: list(integer()),
        id: integer(),
        name: String.t(),
        description: String.t(),
        updated_at: String.t(),
        planned_start_date: String.t(),
        productboard_url: String.t(),
        productboard_name: String.t(),
        member_mention_ids: list(String.t()),
        position: integer(),
        completed_at_override: String.t(),
        completed: boolean(),
        global_id: String.t(),
        follower_ids: list(String.t()),
        started: boolean(),
        group_id: String.t(),
        stats: Generated.Models.EpicStats.t(),
        milestone_id: integer(),
        app_url: String.t(),
        group_ids: list(String.t())
  }

  defstruct [:requested_by_id, :group_mention_ids, :created_at, :entity_type, :started_at, :archived, :epic_state_id, :objective_ids, :productboard_id, :associated_groups, :state, :mention_ids, :completed_at, :deadline, :labels, :external_id, :owner_ids, :label_ids, :productboard_plugin_id, :stories_without_projects, :started_at_override, :project_ids, :id, :name, :description, :updated_at, :planned_start_date, :productboard_url, :productboard_name, :member_mention_ids, :position, :completed_at_override, :completed, :global_id, :follower_ids, :started, :group_id, :stats, :milestone_id, :app_url, :group_ids]

  @doc """
The ID of the Member that requested the epic.
"""
def requested_by_id(%__MODULE__{requested_by_id: value}), do: value


@doc """
An array of Group IDs that have been mentioned in the Epic description.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The time/date the Epic was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The time/date the Epic was started.
"""
def started_at(%__MODULE__{started_at: value}), do: value


@doc """
True/false boolean that indicates whether the Epic is archived or not.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The ID of the Epic State.
"""
def epic_state_id(%__MODULE__{epic_state_id: value}), do: value


@doc """
An array of IDs for Objectives to which this epic is related.
"""
def objective_ids(%__MODULE__{objective_ids: value}), do: value


@doc """
The ID of the associated productboard feature.
"""
def productboard_id(%__MODULE__{productboard_id: value}), do: value


@doc """
An array containing Group IDs and Group-owned story counts for the Epic's associated groups.
"""
def associated_groups(%__MODULE__{associated_groups: value}), do: value


@doc """
`Deprecated` The workflow state that the Epic is in.
"""
def state(%__MODULE__{state: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The time/date the Epic was completed.
"""
def completed_at(%__MODULE__{completed_at: value}), do: value


@doc """
The Epic's deadline.
"""
def deadline(%__MODULE__{deadline: value}), do: value


@doc """
An array of Labels attached to the Epic.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Epic has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs for any members you want to add as Owners on this new Epic.
"""
def owner_ids(%__MODULE__{owner_ids: value}), do: value


@doc """
An array of Label ids attached to the Epic.
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
The ID of the associated productboard integration.
"""
def productboard_plugin_id(%__MODULE__{productboard_plugin_id: value}), do: value


@doc """
The number of stories in this epic which are not associated with a project.
"""
def stories_without_projects(%__MODULE__{stories_without_projects: value}), do: value


@doc """
A manual override for the time/date the Epic was started.
"""
def started_at_override(%__MODULE__{started_at_override: value}), do: value


@doc """
The IDs of Projects related to this Epic.
"""
def project_ids(%__MODULE__{project_ids: value}), do: value


@doc """
The unique ID of the Epic.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the Epic.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The Epic's description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The time/date the Epic was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The Epic's planned start date.
"""
def planned_start_date(%__MODULE__{planned_start_date: value}), do: value


@doc """
The URL of the associated productboard feature.
"""
def productboard_url(%__MODULE__{productboard_url: value}), do: value


@doc """
The name of the associated productboard feature.
"""
def productboard_name(%__MODULE__{productboard_name: value}), do: value


@doc """
An array of Member IDs that have been mentioned in the Epic description.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
The Epic's relative position in the Epic workflow state.
"""
def position(%__MODULE__{position: value}), do: value


@doc """
A manual override for the time/date the Epic was completed.
"""
def completed_at_override(%__MODULE__{completed_at_override: value}), do: value


@doc """
A true/false boolean indicating if the Epic has been completed.
"""
def completed(%__MODULE__{completed: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
An array of UUIDs for any Members you want to add as Followers on this Epic.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
A true/false boolean indicating if the Epic has been started.
"""
def started(%__MODULE__{started: value}), do: value


@doc """
`Deprecated` The ID of the group to associate with the epic. Use `group_ids`.
"""
def group_id(%__MODULE__{group_id: value}), do: value


@doc """
Field stats
"""
def stats(%__MODULE__{stats: value}), do: value


@doc """
`Deprecated` The ID of the Objective this Epic is related to. Use `objective_ids`.
"""
def milestone_id(%__MODULE__{milestone_id: value}), do: value


@doc """
The Shortcut application url for the Epic.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
An array of UUIDS for Groups to which this Epic is related.
"""
def group_ids(%__MODULE__{group_ids: value}), do: value

end
