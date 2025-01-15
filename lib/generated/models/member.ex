defmodule Generated.Models.Member do
  @moduledoc """
  Details about an individual user within the Workspace.
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        created_without_invite: boolean(),
        disabled: boolean(),
        entity_type: String.t(),
        global_id: String.t(),
        group_ids: list(String.t()),
        id: String.t(),
        profile: Generated.Models.Profile.t(),
        replaced_by: String.t(),
        role: String.t(),
        state: String.t(),
        updated_at: String.t()
  }

  defstruct [:created_at, :created_without_invite, :disabled, :entity_type, :global_id, :group_ids, :id, :profile, :replaced_by, :role, :state, :updated_at]

  @doc """
The time/date the Member was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
Whether this member was created as a placeholder entity.
"""
def created_without_invite(%__MODULE__{created_without_invite: value}), do: value


@doc """
True/false boolean indicating whether the Member has been disabled within the Workspace.
"""
def disabled(%__MODULE__{disabled: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The Member's group ids
"""
def group_ids(%__MODULE__{group_ids: value}), do: value


@doc """
The Member's ID in Shortcut.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
Field profile
"""
def profile(%__MODULE__{profile: value}), do: value


@doc """
The id of the member that replaces this one when merged.
"""
def replaced_by(%__MODULE__{replaced_by: value}), do: value


@doc """
The Member's role in the Workspace.
"""
def role(%__MODULE__{role: value}), do: value


@doc """
The user state, one of partial, full, disabled, or imported.  A partial user is disabled, has no means to log in, and is not an import user.  A full user is enabled and has a means to log in.  A disabled user is disabled and has a means to log in.  An import user is disabled, has no means to log in, and is marked as an import user.
"""
def state(%__MODULE__{state: value}), do: value


@doc """
The time/date the Member was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
