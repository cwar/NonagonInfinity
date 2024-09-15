class RemoveIsStatsableFromAlbums < ActiveRecord::Migration[7.2]
  def change
    remove_column :albums, :is_statsable, :boolean
  end
end
