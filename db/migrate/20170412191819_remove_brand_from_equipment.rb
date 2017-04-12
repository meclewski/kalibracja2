class RemoveBrandFromEquipment < ActiveRecord::Migration[5.0]
  def change
    remove_column :equipment, :brand_id, :string
  end
end
