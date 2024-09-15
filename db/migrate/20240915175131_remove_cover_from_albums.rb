class RemoveCoverFromAlbums < ActiveRecord::Migration[7.2]
  def change
    remove_column :albums, :cover, :string
  end
end
