defmodule Generated.Models.DataConflictError do
  @moduledoc """
  Error returned when Datomic tx fails due to Datomc :db.error/cas-failed error
  """

  @type t :: %__MODULE__{
    error: String.t(),
        message: String.t()
  }

  defstruct [:error, :message]

  @doc """
Field error
"""
def error(%__MODULE__{error: value}), do: value


@doc """
An explanatory message: "The update failed due to a data conflict. Please refresh and try again."
"""
def message(%__MODULE__{message: value}), do: value

end
