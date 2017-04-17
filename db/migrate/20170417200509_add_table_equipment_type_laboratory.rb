class AddTableEquipmentTypeLaboratory < ActiveRecord::Migration[5.0]
  def change
    
    create_table :equipment_types_laboratories, :id => false do |t|
      t.integer :equipment_type_id
      t.integer :laboratory_id
    end
  
  end
end
