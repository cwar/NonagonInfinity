class RemoveDisplaynameFromAlbums < ActiveRecord::Migration[7.2]
  def change
    remove_column :albums, :displayname, :string
  end
end
