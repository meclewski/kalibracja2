class Producer < ApplicationRecord
  belongs_to :brand
  has_many :equipment_types
end
