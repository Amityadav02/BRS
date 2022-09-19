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
    @bus.update(bus_params)
    redirect_to @bus
  end

  def new
    @bus = Bus.new
  end
  
  def create
    @bus = Bus.new(bus_params)
    @bus.save
    redirect_to @bus
  end

private

  def bus_params
    params.require(:bus).
        permit(:name, :registration, :source, :destination, :total_seats)
  end

end
