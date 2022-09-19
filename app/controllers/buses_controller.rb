class BusesController < ApplicationController

  def index
    @buses = Bus.all
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])
    bus_params =
      params.require(:bus).
        permit(:name, :registration, :source, :destination, :total_seats)
    @bus.update(bus_params)
    redirect_to @bus
  end 



end
