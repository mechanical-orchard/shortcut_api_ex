defmodule Generated.Models.PullRequest do
  @moduledoc """
  Corresponds to a VCS Pull Request attached to a Shortcut story.
  """

  @type t :: %__MODULE__{
    branch_id: integer(),
        branch_name: String.t(),
        build_status: String.t(),
        closed: boolean(),
        created_at: String.t(),
        draft: boolean(),
        entity_type: String.t(),
        has_overlapping_stories: boolean(),
        id: integer(),
        merged: boolean(),
        num_added: integer(),
        num_commits: integer(),
        num_modified: integer(),
        num_removed: integer(),
        number: integer(),
        overlapping_stories: list(integer()),
        repository_id: integer(),
        review_status: String.t(),
        target_branch_id: integer(),
        target_branch_name: String.t(),
        title: String.t(),
        updated_at: String.t(),
        url: String.t(),
        vcs_labels: list(Generated.Models.PullRequestLabel.t())
  }

  defstruct [:branch_id, :branch_name, :build_status, :closed, :created_at, :draft, :entity_type, :has_overlapping_stories, :id, :merged, :num_added, :num_commits, :num_modified, :num_removed, :number, :overlapping_stories, :repository_id, :review_status, :target_branch_id, :target_branch_name, :title, :updated_at, :url, :vcs_labels]

  @doc """
The ID of the branch for the particular pull request.
"""
def branch_id(%__MODULE__{branch_id: value}), do: value


@doc """
The name of the branch for the particular pull request.
"""
def branch_name(%__MODULE__{branch_name: value}), do: value


@doc """
The status of the Continuous Integration workflow for the pull request.
"""
def build_status(%__MODULE__{build_status: value}), do: value


@doc """
True/False boolean indicating whether the VCS pull request has been closed.
"""
def closed(%__MODULE__{closed: value}), do: value


@doc """
The time/date the pull request was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
True/False boolean indicating whether the VCS pull request is in the draft state.
"""
def draft(%__MODULE__{draft: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
Boolean indicating that the Pull Request has Stories that have Pull Requests that change at least one of the same lines this Pull Request changes.
"""
def has_overlapping_stories(%__MODULE__{has_overlapping_stories: value}), do: value


@doc """
The unique ID associated with the pull request in Shortcut.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
True/False boolean indicating whether the VCS pull request has been merged.
"""
def merged(%__MODULE__{merged: value}), do: value


@doc """
Number of lines added in the pull request, according to VCS.
"""
def num_added(%__MODULE__{num_added: value}), do: value


@doc """
The number of commits on the pull request.
"""
def num_commits(%__MODULE__{num_commits: value}), do: value


@doc """
Number of lines modified in the pull request, according to VCS.
"""
def num_modified(%__MODULE__{num_modified: value}), do: value


@doc """
Number of lines removed in the pull request, according to VCS.
"""
def num_removed(%__MODULE__{num_removed: value}), do: value


@doc """
The pull request's unique number ID in VCS.
"""
def number(%__MODULE__{number: value}), do: value


@doc """
An array of Story ids that have Pull Requests that change at least one of the same lines this Pull Request changes.
"""
def overlapping_stories(%__MODULE__{overlapping_stories: value}), do: value


@doc """
The ID of the repository for the particular pull request.
"""
def repository_id(%__MODULE__{repository_id: value}), do: value


@doc """
The status of the review for the pull request.
"""
def review_status(%__MODULE__{review_status: value}), do: value


@doc """
The ID of the target branch for the particular pull request.
"""
def target_branch_id(%__MODULE__{target_branch_id: value}), do: value


@doc """
The name of the target branch for the particular pull request.
"""
def target_branch_name(%__MODULE__{target_branch_name: value}), do: value


@doc """
The title of the pull request.
"""
def title(%__MODULE__{title: value}), do: value


@doc """
The time/date the pull request was created.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The URL for the pull request.
"""
def url(%__MODULE__{url: value}), do: value


@doc """
An array of PullRequestLabels attached to the PullRequest.
"""
def vcs_labels(%__MODULE__{vcs_labels: value}), do: value

end
