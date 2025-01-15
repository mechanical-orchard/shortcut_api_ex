defmodule Generated.Models.UnusableEntitlementError do
  @moduledoc """
  Generated struct for UnusableEntitlementError
  """

  @type t :: %__MODULE__{
    entitlement_tag: String.t(),
        message: String.t(),
        reason_tag: String.t()
  }

  defstruct [:entitlement_tag, :message, :reason_tag]

  @doc """
Short tag describing the unusable entitlement action taken by the user.
"""
def entitlement_tag(%__MODULE__{entitlement_tag: value}), do: value


@doc """
Message displayed to the user on why their action failed.
"""
def message(%__MODULE__{message: value}), do: value


@doc """
The tag for violating an entitlement action.
"""
def reason_tag(%__MODULE__{reason_tag: value}), do: value

end
