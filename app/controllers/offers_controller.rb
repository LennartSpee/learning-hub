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
    @offer = Offer.new(create_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def create_params
    params.require(:offers).permit(:title, :description, :price, :duration, :location)
  end
end
