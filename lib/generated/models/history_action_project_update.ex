defmodule Generated.Models.HistoryActionProjectUpdate do
  @moduledoc """
  An action representing a Project being updated.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        app_url: String.t(),
        entity_type: String.t(),
        id: integer(),
        name: String.t()
  }

  defstruct [:action, :app_url, :entity_type, :id, :name]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The application URL of the Project.
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
The name of the Project.
"""
def name(%__MODULE__{name: value}), do: value

end
