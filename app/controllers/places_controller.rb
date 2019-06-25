class PlacesController < ApplicationController
  include Pagy::Backend
  def index
    #@placeList = Place.all
    @pagy, @places = pagy(Place.all)
  end

  def new
    @place = Place.new
  end
end
