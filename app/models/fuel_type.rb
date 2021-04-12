class FuelType < ApplicationRecord
  belongs_to :gas_station

  CATEGORIES = ['Diesel', 'Diesel S10', 'Gasoline', 'Gasoline Added', 'Etanol', 'Gas']
end
