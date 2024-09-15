class Song < ApplicationRecord
	include PgSearch::Model
	pg_search_scope :search_by_title, against: [:title]
	# pg_search_scope :search_by_title, against: [:name]
	
    has_many :setlists
    
    validates :name, presence: true
    validates :slug, presence: true, uniqueness: true
    validates :isoriginal, presence: true
  end
  
