defmodule App.Assets.Image do
  use Ecto.Schema
  import Ecto.Changeset
  alias App.Assets.Image
  use Arc.Ecto.Schema

  schema "images" do
    field :filename, App.ImageFile.Type
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Image{} = image, attrs) do
    image
    |> cast(attrs, [:name, :filename])
    |> cast_attachments(attrs, [:filename])
    |> validate_required([:name, :filename])
  end
end

