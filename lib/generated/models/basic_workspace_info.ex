defmodule Generated.Models.BasicWorkspaceInfo do
  @moduledoc """
  Generated struct for BasicWorkspaceInfo
  """

  @type t :: %__MODULE__{
    estimate_scale: list(integer()),
        url_slug: String.t()
  }

  defstruct [:estimate_scale, :url_slug]

  @doc """
Field estimate_scale
"""
def estimate_scale(%__MODULE__{estimate_scale: value}), do: value


@doc """
Field url_slug
"""
def url_slug(%__MODULE__{url_slug: value}), do: value

end
