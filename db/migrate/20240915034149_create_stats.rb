class CreateStats < ActiveRecord::Migration[7.2]
  def change
    create_table :stats do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :shows_attended
      t.text :favorite_songs

      t.timestamps
    end
  end
end
