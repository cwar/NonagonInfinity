class Album < ApplicationRecord
  belongs_to :artist
  has_one_attached :cover
  validates :artist_id, :title, :release_date, presence: true

  before_save :generate_slug, :set_lastmod

  private
  
  def set_lastmod
    self.lastmod = Time.current if self.lastmod.nil?
  end

  def generate_slug
    if self.title.present? 
      self.slug = self.title.parameterize
    else
      errors.add(:title, "can't be blank")
    end
  end
end