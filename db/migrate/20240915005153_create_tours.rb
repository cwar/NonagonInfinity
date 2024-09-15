class CreateTours < ActiveRecord::Migration[7.2]
  def change
    create_table :tours do |t|
      t.string :tourname, limit: 50, null: false

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end

    # Adding unique index if tourname should be unique
    add_index :tours, :tourname, unique: true
  end
end
