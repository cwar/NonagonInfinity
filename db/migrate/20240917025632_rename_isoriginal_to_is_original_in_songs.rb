class RenameIsoriginalToIsOriginalInSongs < ActiveRecord::Migration[7.2]
  def change
    rename_column :songs, :isoriginal, :is_original
  end
end
