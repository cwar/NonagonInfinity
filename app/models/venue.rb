class Venue < ApplicationRecord
    validates :venuename, presence: true
    validates :slug, uniqueness: true, allow_nil: true
  end
  