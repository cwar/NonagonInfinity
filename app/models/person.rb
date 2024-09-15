class Person < ApplicationRecord
    has_many :bandmembers, dependent: :destroy
  
    validates :personname, presence: true
    validates :slug, presence: true, uniqueness: true
    validates :notes, presence: true
    validates :appearances, presence: true
  end
  