class Setlist < ApplicationRecord
    belongs_to :song
    belongs_to :show
  
    # Add validations if needed
    validates :displayname, presence: true
    validates :setnumber, presence: true
    validates :position, presence: true
    # etc.
  end
  