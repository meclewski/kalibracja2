class CreateEquipmentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment_types do |t|
      t.string :type_of_equipment
      t.integer :producer_id

      t.timestamps
    end
  end
end
