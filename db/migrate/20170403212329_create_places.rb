class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :place_of_use

      t.timestamps
    end
  end
end
