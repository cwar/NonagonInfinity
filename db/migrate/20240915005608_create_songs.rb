class CreateSongs < ActiveRecord::Migration[7.2]
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.integer :isoriginal, null: false
      t.string :original_artist, limit: 55
      t.text :lyrics
      t.text :metadata
      t.text :nickname

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
