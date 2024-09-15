class RenameArtistToNameInArtists < ActiveRecord::Migration[7.2]
  def change
    rename_column :artists, :artist, :name
  end
end