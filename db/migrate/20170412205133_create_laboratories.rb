class CreateLaboratories < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratories do |t|
      t.string :lab_name
      t.string :accreditation
      t.string :address
      t.string :phone
      t.string :contact
      t.string :lab_description

      t.timestamps
    end
  end
end
