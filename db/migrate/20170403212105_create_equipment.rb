class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.integer :calibration_number
      t.string :inventory_number
      t.string :serial_number
      t.date :calibration_date
      t.string :verification_result
      t.integer :user_id
      t.integer :admin_id
      t.integer :brand_id
      t.integer :place_id

      t.timestamps
    end
  end
end
