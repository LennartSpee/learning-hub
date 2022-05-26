class MyOffersController < ApplicationController
  def show
    @offer = Offer.find(params[:id])
    @offer.user = current_user
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)

    redirect_to offer_path(@offer)
  end

  def destroy
  end

  private

  def offer_params
    params.require(:offer).permit(:photo, :title, :description, :price, :duration, :location)
  end
end
  #redirect_to dog_path(@dog)
