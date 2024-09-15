class AddDescriptionToAlbums < ActiveRecord::Migration[7.2]
  def change
    add_column :albums, :description, :text
  end
end
