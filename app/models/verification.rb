class Verification < ApplicationRecord
  has_many :equipment_types
  validates :type_of_verification, presence: true
end
