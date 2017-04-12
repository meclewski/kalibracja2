class EquipmentType < ApplicationRecord
  belongs_to :producer
  has_many :equipment
end
