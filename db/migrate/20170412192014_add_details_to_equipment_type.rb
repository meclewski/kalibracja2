class AddDetailsToEquipmentType < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment_types, :e_price, :string
    add_column :equipment_types, :ver_price, :string
    add_column :equipment_types, :expiration_date, :date
    add_column :equipment_types, :laboratory_id, :integer
    add_column :equipment_types, :verification_id, :integer
  end
end
