class Api::V1::LocationsController < ApplicationController
  skip_before_action :authorized #temporarily disable until monday

  def create
    @location = Location.new(
      name: location_params[:name],
      address_line_1: location_params[:lineOne],
      address_line_2: location_params[:lineTwo],
      lat: location_params[:lat],
      lng: location_params[:lng]
    )
    if @location.save
      render json: @location
    else
      render json: {message: 'creation failed'}
    end
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  def index
    @locations = Location.all.map do |location|
      {id: location.id, lat: location.lat, lng: location.lng}
    end
    render json: {locations: @locations}
  end

  private

  def location_params
    params.require(:location).permit(:name,:lineOne,:lineTwo,:lat,:lng)
  end


end
