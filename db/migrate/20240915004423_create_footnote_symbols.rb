class CreateFootnoteSymbols < ActiveRecord::Migration[7.2]
  def change
    create_table :footnote_symbols do |t|
      t.integer :footnote_number, null: false
      t.string :symbol, limit: 3, null: false
      t.string :sane_value, limit: 3

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end

    # Adding unique index if footnote_number and symbol combination should be unique
    add_index :footnote_symbols, [:footnote_number, :symbol], unique: true
  end
end
