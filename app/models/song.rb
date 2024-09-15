class Song < ApplicationRecord
    validates :name, presence: true
    validates :slug, presence: true, uniqueness: true
    validates :isoriginal, presence: true
  end
  