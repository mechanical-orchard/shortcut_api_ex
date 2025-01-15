defmodule Generated.Models.Project do
  @moduledoc """
  Projects typically map to teams (such as Frontend, Backend, Mobile, Devops, etc) but can represent any open-ended product, component, or initiative.
  """

  @type t :: %__MODULE__{
    abbreviation: String.t(),
        app_url: String.t(),
        archived: boolean(),
        color: String.t(),
        created_at: String.t(),
        days_to_thermometer: integer(),
        description: String.t(),
        entity_type: String.t(),
        external_id: String.t(),
        follower_ids: list(String.t()),
        global_id: String.t(),
        id: integer(),
        iteration_length: integer(),
        name: String.t(),
        show_thermometer: boolean(),
        start_time: String.t(),
        stats: Generated.Models.ProjectStats.t(),
        team_id: integer(),
        updated_at: String.t(),
        workflow_id: integer()
  }

  defstruct [:abbreviation, :app_url, :archived, :color, :created_at, :days_to_thermometer, :description, :entity_type, :external_id, :follower_ids, :global_id, :id, :iteration_length, :name, :show_thermometer, :start_time, :stats, :team_id, :updated_at, :workflow_id]

  @doc """
The Project abbreviation used in Story summaries. Should be kept to 3 characters at most.
"""
def abbreviation(%__MODULE__{abbreviation: value}), do: value


@doc """
The Shortcut application url for the Project.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
True/false boolean indicating whether the Project is in an Archived state.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The color associated with the Project in the Shortcut member interface.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The time/date that the Project was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The number of days before the thermometer appears in the Story summary.
"""
def days_to_thermometer(%__MODULE__{days_to_thermometer: value}), do: value


@doc """
The description of the Project.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Project has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs for any Members listed as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The Global ID of the Project.
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The unique ID of the Project.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The number of weeks per iteration in this Project.
"""
def iteration_length(%__MODULE__{iteration_length: value}), do: value


@doc """
The name of the Project
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Configuration to enable or disable thermometers in the Story summary.
"""
def show_thermometer(%__MODULE__{show_thermometer: value}), do: value


@doc """
The date at which the Project was started.
"""
def start_time(%__MODULE__{start_time: value}), do: value


@doc """
Field stats
"""
def stats(%__MODULE__{stats: value}), do: value


@doc """
The ID of the team the project belongs to.
"""
def team_id(%__MODULE__{team_id: value}), do: value


@doc """
The time/date that the Project was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The ID of the workflow the project belongs to.
"""
def workflow_id(%__MODULE__{workflow_id: value}), do: value

end
