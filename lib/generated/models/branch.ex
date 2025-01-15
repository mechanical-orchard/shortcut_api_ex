defmodule Generated.Models.Branch do
  @moduledoc """
  Branch refers to a VCS branch. Branches are feature branches associated with Shortcut Stories.
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        deleted: boolean(),
        entity_type: String.t(),
        id: integer(),
        merged_branch_ids: list(integer()),
        name: String.t(),
        persistent: boolean(),
        pull_requests: list(Generated.Models.PullRequest.t()),
        repository_id: integer(),
        updated_at: String.t(),
        url: String.t()
  }

  defstruct [:created_at, :deleted, :entity_type, :id, :merged_branch_ids, :name, :persistent, :pull_requests, :repository_id, :updated_at, :url]

  @doc """
The time/date the Branch was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A true/false boolean indicating if the Branch has been deleted.
"""
def deleted(%__MODULE__{deleted: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique ID of the Branch.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The IDs of the Branches the Branch has been merged into.
"""
def merged_branch_ids(%__MODULE__{merged_branch_ids: value}), do: value


@doc """
The name of the Branch.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
This field is deprecated, and will always be false.
"""
def persistent(%__MODULE__{persistent: value}), do: value


@doc """
An array of PullRequests attached to the Branch (there is usually only one).
"""
def pull_requests(%__MODULE__{pull_requests: value}), do: value


@doc """
The ID of the Repository that contains the Branch.
"""
def repository_id(%__MODULE__{repository_id: value}), do: value


@doc """
The time/date the Branch was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The URL of the Branch.
"""
def url(%__MODULE__{url: value}), do: value

end
