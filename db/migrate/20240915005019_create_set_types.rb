class CreateSetTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :set_types do |t|
      t.string :settype, null: false

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end

    # Adding unique index if settype should be unique
    add_index :set_types, :settype, unique: true
  end
end
