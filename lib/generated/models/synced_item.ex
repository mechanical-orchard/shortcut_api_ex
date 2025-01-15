defmodule Generated.Models.SyncedItem do
  @moduledoc """
  The synced item for the story.
  """

  @type t :: %__MODULE__{
    external_id: String.t(),
        url: String.t()
  }

  defstruct [:external_id, :url]

  @doc """
The id used to reference an external entity.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The url to the external entity.
"""
def url(%__MODULE__{url: value}), do: value

end
