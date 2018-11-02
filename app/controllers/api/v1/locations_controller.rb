class Api::V1::LocationsController < ApplicationController
  skip_before_action :authorized #temporarily disable until monday

  def create
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


end
