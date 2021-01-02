class MapsController < ApplicationController
  # before_action :set_map, only: [:index]

  def create
    @map = Map.new(map_params)
    if @map.valid?
      map.save
    else
      render :new
    end
  end

  def index
    @map = Map.new(map_params)
  end

  private

  def set_map
    @map = Map.find(params[:id])
  end

  def map_params
    params.require(:map).permit(:address)
  end
end
