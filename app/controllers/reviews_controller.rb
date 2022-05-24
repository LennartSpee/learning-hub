class ReviewsController < ApplicationController
  def new
    @offers = Offers.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @offers = Offers.find(params[:booking_id])
    @review = Review.new
    @review.offers = @offers
    if @review.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
