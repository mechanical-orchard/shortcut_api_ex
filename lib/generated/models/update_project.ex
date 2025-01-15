defmodule Generated.Models.UpdateProject do
  @moduledoc """
  Generated struct for UpdateProject
  """

  @type t :: %__MODULE__{
    abbreviation: String.t(),
        archived: boolean(),
        color: String.t(),
        days_to_thermometer: integer(),
        description: String.t(),
        follower_ids: list(String.t()),
        name: String.t(),
        show_thermometer: boolean(),
        team_id: integer()
  }

  defstruct [:abbreviation, :archived, :color, :days_to_thermometer, :description, :follower_ids, :name, :show_thermometer, :team_id]

  @doc """
The Project abbreviation used in Story summaries. Should be kept to 3 characters at most.
"""
def abbreviation(%__MODULE__{abbreviation: value}), do: value


@doc """
A true/false boolean indicating whether the Story is in archived state.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The color that represents the Project in the UI.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The number of days before the thermometer appears in the Story summary.
"""
def days_to_thermometer(%__MODULE__{days_to_thermometer: value}), do: value


@doc """
The Project's description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
An array of UUIDs for any Members you want to add as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The Project's name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Configuration to enable or disable thermometers in the Story summary.
"""
def show_thermometer(%__MODULE__{show_thermometer: value}), do: value


@doc """
The ID of the team the project belongs to.
"""
def team_id(%__MODULE__{team_id: value}), do: value

end
