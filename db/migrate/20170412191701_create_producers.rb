class CreateProducers < ActiveRecord::Migration[5.0]
  def change
    create_table :producers do |t|
      t.string :producer_name
      t.integer :brand_id

      t.timestamps
    end
  end
end
