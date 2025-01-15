defmodule Generated.Models.EntityTemplate do
  @moduledoc """
  An entity template can be used to prefill various fields when creating new stories.
  """

  @type t :: %__MODULE__{
    author_id: String.t(),
        created_at: String.t(),
        entity_type: String.t(),
        id: String.t(),
        last_used_at: String.t(),
        name: String.t(),
        story_contents: Generated.Models.StoryContents.t(),
        updated_at: String.t()
  }

  defstruct [:author_id, :created_at, :entity_type, :id, :last_used_at, :name, :story_contents, :updated_at]

  @doc """
The unique ID of the member who created the template.
"""
def author_id(%__MODULE__{author_id: value}), do: value


@doc """
The time/date when the entity template was created.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
A string description of this resource.
"""
def entity_type(%__MODULE__{entity_type: value}), do: value


@doc """
The unique identifier for the entity template.
"""
def id(%__MODULE__{id: value}), do: value


@doc """
The last time that someone created an entity using this template.
"""
def last_used_at(%__MODULE__{last_used_at: value}), do: value


@doc """
The template's name.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
Field story_contents
"""
def story_contents(%__MODULE__{story_contents: value}), do: value


@doc """
The time/date when the entity template was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value

end
