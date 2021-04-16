class FuelType < ApplicationRecord
  belongs_to :gas_station

  CATEGORIES = ['Diesel', 'Diesel S10', 'Etanol', 'Gas', 'Gasoline', 'Gasoline Added']
end
