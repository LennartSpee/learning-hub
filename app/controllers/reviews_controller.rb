class ReviewsController < ApplicationController

  def create
    @offer = Offer.find(params[:offer_id])
    @review = Review.new(review_params)
    @review.offer = @offer
    if @review.save
      flash[:success] = 'Review created!'
      redirect_to offer_path(@offer)
    else
      flash[:error] = "Review wasn't saved"
      render 'offers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
