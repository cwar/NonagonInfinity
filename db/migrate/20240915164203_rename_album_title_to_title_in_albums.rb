class RenameAlbumTitleToTitleInAlbums < ActiveRecord::Migration[7.2]
  def change
    rename_column :albums, :albumtitle, :title
  end
end