class GasStationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_gas_station, only: [:edit, :update]

  def index
    @gas_stations = GasStation.all

    @markers = @gas_stations.geocoded.map do |gas_station|
      {
        lat: gas_station.latitude,
        lng: gas_station.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { gas_station: gas_station })
      }
    end
  end

  def new
    @gas_station = GasStation.new
  end

  def create
    @gas_station = GasStation.new(gas_station_params)
    if @gas_station.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @gas_station.update(gas_station_params)
    redirect_to root_path
  end

  private

  def set_gas_station
    @gas_station = GasStation.find(params[:id])
  end

  def gas_station_params
    params.require(:gas_station).permit(:name, :address, :brand)
  end
end
