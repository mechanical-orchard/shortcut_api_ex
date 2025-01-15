defmodule Generated.Models.IterationAssociatedGroup do
  @moduledoc """
  Generated struct for IterationAssociatedGroup
  """

  @type t :: %__MODULE__{
    associated_stories_count: integer(),
        group_id: String.t()
  }

  defstruct [:associated_stories_count, :group_id]

  @doc """
The number of stories this Group owns in the Iteration.
"""
def associated_stories_count(%__MODULE__{associated_stories_count: value}), do: value


@doc """
The Group ID of the associated group.
"""
def group_id(%__MODULE__{group_id: value}), do: value

end
