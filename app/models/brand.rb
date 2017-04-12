class Brand < ApplicationRecord
  has_many :producers
  has_many :equipment_types, through: :producers
end
