defmodule Generated.Models.Group do
  @moduledoc """
  A Group.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        archived: boolean(),
        color: String.t(),
        color_key: String.t(),
        description: String.t(),
        display_icon: Generated.Models.Icon.t(),
        entity_type: String.t(),
        global_id: String.t(),
        id: String.t(),
        member_ids: list(String.t()),
        mention_name: String.t(),
        name: String.t(),
        num_epics_started: integer(),
        num_stories: integer(),
        num_stories_backlog: integer(),
        num_stories_started: integer(),
        workflow_ids: list(integer())
  }

  defstruct [:app_url, :archived, :color, :color_key, :description, :display_icon, :entity_type, :global_id, :id, :member_ids, :mention_name, :name, :num_epics_started, :num_stories, :num_stories_backlog, :num_stories_started, :workflow_ids]

  @doc """
The Shortcut application url for the Group.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
Whether or not the Group is archived.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The hex color to be displayed with the Group (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The color key to be displayed with the Group.
"""
def color_key(%__MODULE__{color_key: value}), do: value


@doc """
The description of the Group.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
Field display_icon
"""
def display_icon(%__MODULE__{display_icon: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The id of the Group.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The Member IDs contain within the Group.
"""
def member_ids(%__MODULE__{member_ids: value}), do: value


@doc """
The mention name of the Group.
"""
def mention_name(%__MODULE__{mention_name: value}), do: value


@doc """
The name of the Group.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The number of epics assigned to the group which are in the started workflow state.
"""
def num_epics_started(%__MODULE__{num_epics_started: value}), do: value


@doc """
The total number of stories assigned to the group.
"""
def num_stories(%__MODULE__{num_stories: value}), do: value


@doc """
The number of stories assigned to the group which are in a backlog workflow state.
"""
def num_stories_backlog(%__MODULE__{num_stories_backlog: value}), do: value


@doc """
The number of stories assigned to the group which are in a started workflow state.
"""
def num_stories_started(%__MODULE__{num_stories_started: value}), do: value


@doc """
The Workflow IDs contained within the Group.
"""
def workflow_ids(%__MODULE__{workflow_ids: value}), do: value

end
