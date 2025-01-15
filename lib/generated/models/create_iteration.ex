defmodule Generated.Models.CreateIteration do
  @moduledoc """
  Generated struct for CreateIteration
  """

  @type t :: %__MODULE__{
    description: String.t(),
        end_date: String.t(),
        follower_ids: list(String.t()),
        group_ids: list(String.t()),
        labels: list(Generated.Models.CreateLabelParams.t()),
        name: String.t(),
        start_date: String.t()
  }

  defstruct [:description, :end_date, :follower_ids, :group_ids, :labels, :name, :start_date]

  @doc """
The description of the Iteration.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The date this Iteration ends, e.g. 2019-07-01.
"""
def end_date(%__MODULE__{end_date: value}), do: value


@doc """
An array of UUIDs for any Members you want to add as Followers.
"""
def follower_ids(%__MODULE__{follower_ids: value}), do: value


@doc """
An array of UUIDs for any Groups you want to add as Followers. Currently, only one Group association is presented in our web UI.
"""
def group_ids(%__MODULE__{group_ids: value}), do: value


@doc """
An array of Labels attached to the Iteration.
"""
def labels(%__MODULE__{labels: value}), do: value


@doc """
The name of this Iteration.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The date this Iteration begins, e.g. 2019-07-01.
"""
def start_date(%__MODULE__{start_date: value}), do: value

end
