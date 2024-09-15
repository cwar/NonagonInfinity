class Song < ApplicationRecord
    has_many :setlists
    
    validates :name, presence: true
    validates :slug, presence: true, uniqueness: true
    validates :isoriginal, presence: true
  end
  