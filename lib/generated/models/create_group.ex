defmodule Generated.Models.CreateGroup do
  @moduledoc """
  Generated struct for CreateGroup
  """

  @type t :: %__MODULE__{
    color: String.t(),
        color_key: String.t(),
        description: String.t(),
        display_icon_id: String.t(),
        member_ids: list(String.t()),
        mention_name: String.t(),
        name: String.t(),
        workflow_ids: list(integer())
  }

  defstruct [:color, :color_key, :description, :display_icon_id, :member_ids, :mention_name, :name, :workflow_ids]

  @doc """
The color you wish to use for the Group in the system.
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The color key you wish to use for the Group in the system.
"""
def color_key(%__MODULE__{color_key: value}), do: value


@doc """
The description of the Group.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
The Icon id for the avatar of this Group.
"""
def display_icon_id(%__MODULE__{display_icon_id: value}), do: value


@doc """
The Member ids to add to this Group.
"""
def member_ids(%__MODULE__{member_ids: value}), do: value


@doc """
The mention name of this Group.
"""
def mention_name(%__MODULE__{mention_name: value}), do: value


@doc """
The name of this Group.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The Workflow ids to add to the Group.
"""
def workflow_ids(%__MODULE__{workflow_ids: value}), do: value

end
