class GasStationsController < ApplicationController
  def index
    @gas_stations = GasStation.where.not(latitude: nil, longitude: nil)

    @markers = @gas_stations.geocoded.map do |gas_station|
      {
        lat: gas_station.latitude,
        lng: gas_station.longitude
      }
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
