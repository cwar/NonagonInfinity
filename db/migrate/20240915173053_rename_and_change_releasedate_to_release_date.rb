class RenameAndChangeReleasedateToReleaseDate < ActiveRecord::Migration[7.2]
  def change
    # Rename the column from releasedate to release_date
    rename_column :albums, :releasedate, :release_date

    # Change the column type to date using explicit casting
    change_column :albums, :release_date, :date, using: 'release_date::date'
  end
end
