class GasStation < ApplicationRecord
  has_many :fuel_types, dependent: :destroy
end
