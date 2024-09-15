class Bandmember < ApplicationRecord
  belongs_to :artist
  belongs_to :people

  validates :role, presence: true
end
