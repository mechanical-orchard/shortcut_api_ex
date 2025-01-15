defmodule Generated.Models.CreateProject do
  @moduledoc """
  Generated struct for CreateProject
  """

  @type t :: %__MODULE__{
    abbreviation: String.t(),
        color: String.t(),
        created_at: String.t(),
        description: String.t(),
        external_id: String.t(),
        follower_ids: list(String.t()),
        iteration_length: integer(),
        name: String.t(),
        start_time: String.t(),
        team_id: integer(),
        updated_at: String.t()
  }

  defstruct [:abbreviation, :color, :created_at, :description, :external_id, :follower_ids, :iteration_length, :name, :start_time, :team_id, :updated_at]

  @doc """
The Project abbreviation used in Story summaries. Should be kept to 3 characters at most.
"""
def abbreviation(%__MODULE__{abbreviation: value}), do: value


@doc """
The color you wish to use for the Project in the system.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
Defaults to the time/date it is created but can be set to reflect another date.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The Project description.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Project has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
An array of UUIDs for any members you want to add as Owners on this new Epic.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
The number of weeks per iteration in this Project.
"""
def iteration_length(%__MODULE__{iteration_length: value}), do: value


@doc """
The name of the Project.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The date at which the Project was started.
"""
def start_time(%__MODULE__{start_time: value}), do: value


@doc """
The ID of the team the project belongs to.
"""
def team_id(%__MODULE__{team_id: value}), do: value


@doc """
Defaults to the time/date it is created but can be set to reflect another date.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
