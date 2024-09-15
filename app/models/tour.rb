class Tour < ApplicationRecord
    validates :tourname, presence: true, uniqueness: true
  end
  