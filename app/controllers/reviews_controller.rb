class ReviewsController < ApplicationController
  def new
    @offers = Offers.find
    @review = Review.new
  end

  def create
    @offers = Offers.find
    @review = Review.new
    @review.offers = @offers
  end
end
