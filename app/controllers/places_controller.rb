class PlacesController < ApplicationController
  # before_action :authenticate_user!
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(places_params)
    @place.save
    redirect_to places_path
  end

  def show
    @place = Place.find(params[:id])
  end

  private

  def places_params
    params.require(:place).permit(:title, :description, :category_id, images_attributes: [:id, :photo, :place_id])
  end
end
