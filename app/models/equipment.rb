class Equipment < ApplicationRecord
  belongs_to :equipment_type
  belongs_to :user
  belongs_to :admin
  belongs_to :place
end
