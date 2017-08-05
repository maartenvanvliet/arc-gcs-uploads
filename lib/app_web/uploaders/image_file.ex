defmodule App.ImageFile do
  use Arc.Definition

  # Include ecto support (requires package arc_ecto installed):
  use Arc.Ecto.Definition

  @versions [:original]

  def __storage, do: Arc.Storage.GCS

  def gcs_object_headers(:original, {file, _scope}) do
    [content_type: MIME.from_path(file.file_name)]
  end
end
