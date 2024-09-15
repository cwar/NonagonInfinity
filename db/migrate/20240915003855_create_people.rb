class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :personname, null: false
      t.string :slug, null: false
      t.text :notes, null: false
      t.integer :appearances, default: 0, null: false

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }

      t.index :slug, unique: true
    end
  end
end
