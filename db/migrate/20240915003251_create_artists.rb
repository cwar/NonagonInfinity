class CreateArtists < ActiveRecord::Migration[7.2]
  def change
    create_table :artists do |t|
      t.string :artist, null: false
      t.string :slug, null: false
      t.text :bio
      t.string :active_years

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
