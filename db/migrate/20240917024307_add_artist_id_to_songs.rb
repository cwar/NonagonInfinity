class AddArtistIdToSongs < ActiveRecord::Migration[7.2]
  def change
    add_column :songs, :artist_id, :integer
  end
end
