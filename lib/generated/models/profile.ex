defmodule Generated.Models.Profile do
  @moduledoc """
  A group of Member profile details.
  """

  @type t :: %__MODULE__{
    deactivated: boolean(),
        display_icon: Generated.Models.Icon.t(),
        email_address: String.t(),
        entity_type: String.t(),
        gravatar_hash: String.t(),
        id: String.t(),
        is_owner: boolean(),
        mention_name: String.t(),
        name: String.t(),
        two_factor_auth_activated: boolean()
  }

  defstruct [:deactivated, :display_icon, :email_address, :entity_type, :gravatar_hash, :id, :is_owner, :mention_name, :name, :two_factor_auth_activated]

  @doc """
A true/false boolean indicating whether the Member has been deactivated within Shortcut.
"""
def deactivated(%__MODULE__{deactivated: value}), do: value


@doc """
Field display_icon
"""
def display_icon(%__MODULE__{display_icon: value}), do: value


@doc """
The primary email address of the Member with the Organization.
"""
def email_address(%__MODULE__{email_address: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This is the gravatar hash associated with email_address.
"""
def gravatar_hash(%__MODULE__{gravatar_hash: value}), do: value


@doc """
The unique identifier of the profile.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
A boolean indicating whether this profile is an owner at their associated organization.
"""
def is_owner(%__MODULE__{is_owner: value}), do: value


@doc """
The Member's username within the Organization.
"""
def mention_name(%__MODULE__{mention_name: value}), do: value


@doc """
The Member's name within the Organization.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
If Two Factor Authentication is activated for this User.
"""
def two_factor_auth_activated(%__MODULE__{two_factor_auth_activated: value}), do: value

end
