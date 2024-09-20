class AddAlbumIdToSongs < ActiveRecord::Migration[7.2]
  def change
    add_column :songs, :album_id, :integer
  end
end
