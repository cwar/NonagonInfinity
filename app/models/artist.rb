class Artist < ApplicationRecord
    before_save :generate_slug
  
    private
  
    def generate_slug
      self.slug = artist.parameterize if slug.blank?
    end
  end  