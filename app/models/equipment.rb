class Equipment < ApplicationRecord
  belongs_to :equipment_type
  belongs_to :user
end
