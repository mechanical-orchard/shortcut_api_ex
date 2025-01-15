defmodule Generated.Models.Label do
  @moduledoc """
  A Label can be used to associate and filter Stories and Epics, and also create new Workspaces.
  """

  @type t :: %__MODULE__{
    app_url: String.t(),
        archived: boolean(),
        color: String.t(),
        created_at: String.t(),
        description: String.t(),
        entity_type: String.t(),
        external_id: String.t(),
        global_id: String.t(),
        id: integer(),
        name: String.t(),
        stats: Generated.Models.LabelStats.t(),
        updated_at: String.t()
  }

  defstruct [:app_url, :archived, :color, :created_at, :description, :entity_type, :external_id, :global_id, :id, :name, :stats, :updated_at]

  @doc """
The Shortcut application url for the Label.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
A true/false boolean indicating if the Label has been archived.
"""
def archived(%__MODULE__{archived: value}), do: value


@doc """
The hex color to be displayed with the Label (for example, "#ff0000").
"""
def color(%__MODULE__{color: value}), do: value


@doc """
The time/date that the Label was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The description of the Label.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
This field can be set to another unique ID. In the case that the Label has been imported from another tool, the ID in the other tool can be indicated here.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
Field global_id
"""
def global_id(%__MODULE__{global_id: value}), do: value


@doc """
The unique ID of the Label.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the Label.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field stats
"""
def stats(%__MODULE__{stats: value}), do: value


@doc """
The time/date that the Label was updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
