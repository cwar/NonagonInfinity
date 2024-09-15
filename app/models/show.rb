class Show < ApplicationRecord
    belongs_to :artist
    belongs_to :venue
    belongs_to :tour, optional: true

    has_many :setlists
  
    validates :venue_id, presence: true
    validates :artist_id, presence: true
    validates :showdate, presence: true
    validates :showorder, presence: true
    validates :settype, presence: true
    validates :opener, presence: true
    validates :soundcheck, presence: true
    validates :permalink, presence: true
  end
  