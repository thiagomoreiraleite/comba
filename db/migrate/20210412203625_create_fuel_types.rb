class CreateFuelTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :fuel_types do |t|
      t.string :name
      t.float :price
      t.references :gas_station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
