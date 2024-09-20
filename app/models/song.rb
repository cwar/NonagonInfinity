class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album, optional: true

  before_save :generate_slug
  
  validates :name, :slug, :artist, presence: true

  private

  def generate_slug
    if self.name.present? 
      self.slug = self.name.parameterize
    else
      errors.add(:name, "can't be blank")
    end
  end
end