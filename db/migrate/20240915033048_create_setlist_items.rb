class CreateSetlistItems < ActiveRecord::Migration[7.2]
  def change
    create_table :setlist_items do |t|
      t.references :setlist, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
