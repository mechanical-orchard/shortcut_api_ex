defmodule Generated.Models.HistoryReferenceLabel do
  @moduledoc """
  A reference to an Label.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        entity_type: String.t(),
        id: any(),
        name: String.t()
  }

  defstruct [:app_url, :entity_type, :id, :name]

  @doc """
The application URL of the Label.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the entity referenced.
"""
def name(%__MODULE__{name: value}), do: value

end
