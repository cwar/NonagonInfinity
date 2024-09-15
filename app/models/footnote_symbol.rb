class FootnoteSymbol < ApplicationRecord
    validates :footnote_number, presence: true
    validates :symbol, presence: true, length: { is: 3 }
    validates :sane_value, length: { maximum: 3 }
  end
  