class CreateArtists < ActiveRecord::Migration[7.2]
  def change
    create_table :artists do |t|
      t.string :artist
      t.string :slug
      t.text :bio
      t.string :active_years

      t.timestamps
    end
  end
end
