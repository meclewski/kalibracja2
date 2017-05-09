class Place < ApplicationRecord
  has_many :equipment
  validates :place_of_use, presence: true
end
