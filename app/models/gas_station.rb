class GasStation < ApplicationRecord
  has_many :fuel_types, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
