defmodule Generated.Models.StorySearchResults do
  @moduledoc """
  The results of the Story search query.
  """

  @type t :: %__MODULE__{
    data: list(Generated.Models.StorySearchResult.t()),
        next: String.t(),
        total: integer()
  }

  defstruct [:data, :next, :total]

  @doc """
A list of search results.
"""
def data(%__MODULE__{data: value}), do: value


@doc """
The URL path and query string for the next page of search results.
"""
def next(%__MODULE__{next: value}), do: value


@doc """
The total number of matches for the search query. The first 1000 matches can be paged through via the API.
"""
def total(%__MODULE__{total: value}), do: value

end
