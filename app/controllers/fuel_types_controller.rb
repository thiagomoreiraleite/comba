class FuelTypesController < ApplicationController
  before_action :set_fuel_type, only: [:edit, :update]
  before_action :set_gas_station_id, only: [:new, :create]

  def new
    @fuel_type = FuelType.new
  end

  def create
    @fuel_type = FuelType.new(fuel_type_params)

    if @fuel_type.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @fuel_type.update(fuel_type_params)
    redirect_to root_path
  end

  private

  def set_fuel_type
    @fuel_type = FuelType.find(params[:id])
  end

  def set_gas_station_id
    @gas_station = GasStation.find(params[:gas_station_id])
  end

  def fuel_type_params
    params.require(:fuel_type).permit(:name, :price)
  end
end
