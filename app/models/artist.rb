class Artist < ApplicationRecord
    before_save :generate_slug
    
    has_many :albums
  
    private
  
    def generate_slug
      self.slug = name.parameterize if slug.blank?
    end
  end  