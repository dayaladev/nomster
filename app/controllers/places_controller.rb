class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  include Pagy::Backend
  def index
    #@placeList = Place.all
    @pagy, @places = pagy(Place.all)
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  private
  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end
