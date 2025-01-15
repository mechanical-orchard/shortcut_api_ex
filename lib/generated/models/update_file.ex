defmodule Generated.Models.UpdateFile do
  @moduledoc """
  Generated struct for UpdateFile
  """

  @type t :: %__MODULE__{
    created_at: String.t(),
        description: String.t(),
        external_id: String.t(),
        name: String.t(),
        updated_at: String.t(),
        uploader_id: String.t()
  }

  defstruct [:created_at, :description, :external_id, :name, :updated_at, :uploader_id]

  @doc """
The time/date that the file was uploaded.
"""
def created_at(%__MODULE__{created_at: value}), do: value


@doc """
The description of the file.
"""
def description(%__MODULE__{description: value}), do: value


@doc """
An additional ID that you may wish to assign to the file.
"""
def external_id(%__MODULE__{external_id: value}), do: value


@doc """
The name of the file.
"""
def name(%__MODULE__{name: value}), do: value


@doc """
The time/date that the file was last updated.
"""
def updated_at(%__MODULE__{updated_at: value}), do: value


@doc """
The unique ID assigned to the Member who uploaded the file to Shortcut.
"""
def uploader_id(%__MODULE__{uploader_id: value}), do: value

end
