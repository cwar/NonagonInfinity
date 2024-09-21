class ChangeIsOriginalToBooleanInSongs < ActiveRecord::Migration[7.2]
  def change
    change_column :songs, :is_original, :boolean, default: false, using: 'is_original::boolean'
  end
end
