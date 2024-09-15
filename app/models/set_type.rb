class SetType < ApplicationRecord
    validates :settype, presence: true, uniqueness: true
  end
  