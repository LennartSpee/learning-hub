class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to my_offers_path
    else
      render :edit
    end
  end

  def my_offers
    @offers = current_user.offers
  end

  def destroy_my_offers
    @offers = current_user.offers
    @offer = Offer.find(params[:id])
    @offer.destroy

    redirect_to my_offers_path(@offers)
  end

  private

  def offer_params
    params.require(:offer).permit(:photo, :title, :description, :price, :duration, :location)
  end
end
