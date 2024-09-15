class Album < ApplicationRecord
  belongs_to :artist
  validates :artist_id, presence: true

  before_save :generate_slug

  private

  def generate_slug
    self.slug = albumtitle.parameterize if slug.blank?
  end
end