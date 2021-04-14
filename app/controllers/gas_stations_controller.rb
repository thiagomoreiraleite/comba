class GasStationsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # @gas_stations = GasStation.where.not(latitude: nil, longitude: nil)
    @gas_stations = GasStation.all

    @markers = @gas_stations.geocoded.map do |gas_station|
      {
        lat: gas_station.latitude,
        lng: gas_station.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { gas_station: gas_station })
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
