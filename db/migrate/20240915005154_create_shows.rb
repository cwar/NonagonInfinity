class CreateShows < ActiveRecord::Migration[7.2]
  def change
    create_table :shows do |t|
      t.integer :venue_id, null: false
      t.integer :artist_id, null: false
      t.date :showdate, null: false
      t.string :showtitle, limit: 255
      t.text :meta, null: false
      t.text :shownotes, null: false
      t.integer :showyear
      t.integer :showorder, null: false
      t.string :settype, limit: 50, default: 'Set', null: false
      t.string :opener, limit: 100, null: false
      t.integer :tour_id, default: 1
      t.integer :lastuser, default: 0, null: false
      t.text :soundcheck, null: false
      t.string :permalink, limit: 255, null: false
      t.integer :isverified, default: 0, null: false

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }

      # Adding foreign key constraints
      t.foreign_key :artists
      t.foreign_key :tours, on_delete: :nullify
    end

    # Adding index for foreign keys
    add_index :shows, :venue_id
    add_index :shows, :artist_id
    add_index :shows, :tour_id
  end
end
