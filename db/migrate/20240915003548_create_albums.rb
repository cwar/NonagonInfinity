class CreateAlbums < ActiveRecord::Migration[7.2]
  def change
    create_table :albums do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :albumtitle, null: false
      t.string :displayname, null: false
      t.string :slug, null: false
      t.string :releasedate, null: false
      t.string :cover, null: false
      t.text :album_notes
      t.boolean :is_statsable, null: false
      t.integer :lastmod, null: false
      t.integer :lastuser

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
