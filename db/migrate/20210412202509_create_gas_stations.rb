class CreateGasStations < ActiveRecord::Migration[6.0]
  def change
    create_table :gas_stations do |t|
      t.string :name
      t.string :address
      t.string :brand

      t.timestamps
    end
  end
end
