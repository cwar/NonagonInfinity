class Transition < ApplicationRecord
    validates :transition, presence: true, length: { maximum: 3 }
    validates :dropdown, presence: true, length: { maximum: 20 }
    validates :default_transition, presence: true, length: { maximum: 20 }
    validates :desc, presence: true, length: { maximum: 55 }
  end
  