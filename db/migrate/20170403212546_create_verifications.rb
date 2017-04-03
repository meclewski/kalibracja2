class CreateVerifications < ActiveRecord::Migration[5.0]
  def change
    create_table :verifications do |t|
      t.string :type_of_verification

      t.timestamps
    end
  end
end
