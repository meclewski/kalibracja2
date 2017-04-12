class AddDetailsToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :equipment_type_id, :integer
    add_column :equipment, :production_date, :date
  end
end
