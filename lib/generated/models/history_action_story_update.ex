defmodule Generated.Models.HistoryActionStoryUpdate do
  @moduledoc """
  An action representing a Story being updated.
  """

  @type t :: %__MODULE__{
    action: String.t(),
        app_url: String.t(),
        changes: Generated.Models.HistoryChangesStory.t(),
        entity_type: String.t(),
        id: integer(),
        name: String.t(),
        story_type: String.t()
  }

  defstruct [:action, :app_url, :changes, :entity_type, :id, :name, :story_type]

  @doc """
The action of the entity referenced.
"""
def action(%__MODULE__{action: value}), do: value


@doc """
The application URL of the Story.
"""
def app_url(%__MODULE__{app_url: value}), do: value


@doc """
Field changes
"""
def changes(%__MODULE__{changes: value}), do: value


@doc """
The type of entity referenced.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The ID of the entity referenced.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The name of the Story.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The type of Story; either feature, bug, or chore.
"""
def story_type(%__MODULE__{story_type: value}), do: value

end
