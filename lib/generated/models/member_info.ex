defmodule Generated.Models.MemberInfo do
  @moduledoc """
  Generated struct for MemberInfo
  """

  @type t :: %__MODULE__{
    id: String.t(),
        mention_name: String.t(),
        name: String.t(),
        workspace2: Generated.Models.BasicWorkspaceInfo.t()
  }

  defstruct [:id, :mention_name, :name, :workspace2]

  @doc """
Field id
"""
def id(%__MODULE__{id: value}), do: value


@doc """
Field mention_name
"""
def mention_name(%__MODULE__{mention_name: value}), do: value


@doc """
Field name
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field workspace2
"""
def workspace2(%__MODULE__{workspace2: value}), do: value

end
