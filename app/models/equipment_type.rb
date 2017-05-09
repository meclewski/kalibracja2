class EquipmentType < ApplicationRecord
  
  belongs_to :producer
  belongs_to :verification
  has_and_belongs_to_many :laboratories
  has_many :equipment
  
end
