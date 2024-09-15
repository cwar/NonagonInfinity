class CreateSetlists < ActiveRecord::Migration[7.2]
  def change
    create_table :setlists do |t|
      t.integer :show_id, null: false
      t.integer :song_id, null: false
      t.string :displayname, null: false
      t.text :setnumber, null: false
      t.integer :position, null: false
      t.integer :transition_id, null: false
      t.string :footnote, null: false
      t.string :tracktime, limit: 7
      t.integer :isjam, null: false
      t.integer :isreprise, null: false
      t.string :uniqueid, limit: 8, null: false
      t.integer :isjamchart, default: 0, null: false
      t.string :jamchartnote, limit: 512

      t.timestamps
    end

    add_foreign_key :setlists, :songs, column: :song_id
    # If you have a foreign key for `show_id`, add it here
    # add_foreign_key :setlists, :shows, column: :show_id
  end
end
