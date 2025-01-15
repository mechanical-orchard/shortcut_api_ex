defmodule Generated.Models.Iteration do
  @moduledoc """
  An Iteration is a defined, time-boxed period of development for a collection of Stories. See https://help.shortcut.com/hc/en-us/articles/360028953452-Iterations-Overview for more information.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        associated_groups: list(Generated.Models.IterationAssociatedGroup.t()),
        created_at: String.t(),
        description: String.t(),
        end_date: String.t(),
        entity_type: String.t(),
        follower_ids: list(String.t()),
        global_id: String.t(),
        group_ids: list(String.t()),
        group_mention_ids: list(String.t()),
        id: integer(),
        label_ids: list(integer()),
        labels: list(Generated.Models.Label.t()),
        member_mention_ids: list(String.t()),
        mention_ids: list(String.t()),
        name: String.t(),
        start_date: String.t(),
        stats: Generated.Models.IterationStats.t(),
        status: String.t(),
        updated_at: String.t()
  }

  defstruct [:app_url, :associated_groups, :created_at, :description, :end_date, :entity_type, :follower_ids, :global_id, :group_ids, :group_mention_ids, :id, :label_ids, :labels, :member_mention_ids, :mention_ids, :name, :start_date, :stats, :status, :updated_at]

  @doc """
The Shortcut application url for the Iteration.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
An array containing Group IDs and Group-owned story counts for the Iteration's associated groups.
"""
def associated_groups(%__MODULE__{associated_groups: value}), do: value


@doc """
The instant when this iteration was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The description of the iteration.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The date this iteration ends.
"""
def end_date(%__MODULE__{end_date: value}), do: value


@doc """
A string description of this resource
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
An array of UUIDs for any Members listed as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
An array of UUIDs for any Groups you want to add as Followers. Currently, only one Group association is presented in our web UI.
"""
def group_ids(%__MODULE__{group_ids: value}), do: value


@doc """
An array of Group IDs that have been mentioned in the Story description.
"""
def group_mention_ids(%__MODULE__{group_mention_ids: value}), do: value


@doc """
The ID of the iteration.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
An array of label ids attached to the iteration.
"""
def label_ids(%__MODULE__{label_ids: value}), do: value


@doc """
An array of labels attached to the iteration.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
An array of Member IDs that have been mentioned in the Story description.
"""
def member_mention_ids(%__MODULE__{member_mention_ids: value}), do: value


@doc """
`Deprecated:` use `member_mention_ids`.
"""
def mention_ids(%__MODULE__{mention_ids: value}), do: value


@doc """
The name of the iteration.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The date this iteration begins.
"""
def start_date(%__MODULE__{start_date: value}), do: value


@doc """
Field stats
"""
def stats(%__MODULE__{stats: value}), do: value


@doc """
The status of the iteration. Values are either "unstarted", "started", or "done".
"""
def status(%__MODULE__{status: value}), do: value


@doc """
The instant when this iteration was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
