class CreateTransitions < ActiveRecord::Migration[7.2]
  def change
    create_table :transitions do |t|
      t.string :transition, null: false, limit: 3
      t.string :dropdown, null: false, limit: 20
      t.string :default_transition, null: false, limit: 20
      t.string :desc, null: false, limit: 55

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
