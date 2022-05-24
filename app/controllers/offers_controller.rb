class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def index
    @offers = Offer.all
  end

  def show
  end

  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      redirect_to @offer, notice: 'Offer was successfully created.'
    else
      render :new
    end
  end
end
