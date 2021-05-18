class GasStationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_gas_station, only: [:show, :edit, :update]

  def index
    @counter_gasolina = 0
    @counter_diesel = 0
    @counter_etanol = 0
    client_ip = request.remote_ip
    if client_ip == "::1"
      client_ip = "Fortaleza, Ceara"
    end
    @user_loc = Geocoder.search(client_ip).first.coordinates
    @gas_stations = GasStation.where.not(latitude: nil, longitude: nil)
    @gasolina_stations = @gas_stations.includes(:fuel_types).where(fuel_types: { name: "Gasolina" }).or(@gas_stations.includes(:fuel_types).where(fuel_types: { name: "Gasolina Aditivada" })).order("fuel_types.price ASC")
    @diesel_stations = @gas_stations.includes(:fuel_types).where(fuel_types: { name: "Diesel" }).or(@gas_stations.includes(:fuel_types).where(fuel_types: { name: "Diesel S10" })).order("fuel_types.price ASC")
    @etanol_stations = @gas_stations.includes(:fuel_types).where(fuel_types: { name: "Etanol" }).order("fuel_types.price ASC")
    @markers = @gas_stations.geocoded.map do |gas_station|
      {
        lat: gas_station.latitude,
        lng: gas_station.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { gas_station: gas_station }),
        name: gas_station.name.upcase,
        address: gas_station.address.upcase,
        brand: gas_station.brand.capitalize,
        id: gas_station.id,
        dist: gas_station.distance_to(current_user)
      }
    end
  end

  def show
    @fuel_types = @gas_station.fuel_types
    @fuel_type = FuelType.new
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

  # def set_user
  #   @user = User.find(params[:id])
  # end

  # def user_params
  #   params.require(:user).permit(:email)
  # end
end
