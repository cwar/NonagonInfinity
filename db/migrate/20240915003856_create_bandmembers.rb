class CreateBandmembers < ActiveRecord::Migration[7.2]
  def change
    create_table :bandmembers do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :people, null: false, foreign_key: true
      t.string :role, default: 'Musician', null: false

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
