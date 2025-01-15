defmodule Generated.Models.MaxSearchResultsExceededError do
  @moduledoc """
  Error returned when total maximum supported results have been reached.
  """

  @type t :: %__MODULE__{
    error: String.t(),
        maximum_results: integer(),
        message: String.t()
  }

  defstruct [:error, :maximum_results, :message]

  @doc """
The name for this type of error, `maximum-results-exceeded`
"""
def error(%__MODULE__{error: value}), do: value


@doc """
The maximum number of search results supported, `1000`
"""
def maximum_results(%__MODULE__{maximum_results: value}), do: value


@doc """
An explanatory message: "A maximum of 1000 search results are supported."
"""
def message(%__MODULE__{message: value}), do: value

end
