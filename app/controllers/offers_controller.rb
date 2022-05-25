class OffersController < ApplicationController
  def index
    @offers = Offer.all

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(create_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def create_params
    params.require(:offer).permit(:photo, :title, :description, :price, :duration, :location)
  end
end
