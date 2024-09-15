class CreateVenues < ActiveRecord::Migration[7.2]
  def change
    create_table :venues do |t|
      t.string :venuename, null: false
      t.string :streetaddress
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :url
      t.integer :capacity
      t.integer :aliasof, default: 0, null: false
      t.string :slug

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end

    # Add index for foreign key if necessary
    # add_index :venues, :aliasof
  end
end
