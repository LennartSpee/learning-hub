class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end
  # def index
  #   @bookings = Booking.all
  # end
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = Offer.find(params[:offer_id])
    if @booking.save
      flash[:notice] = "Booking successfully done"
      redirect_to offers_path(@offers)
    else
      flash[:error] = "Something went wrong"
      render :new
    end

    def show
      @booking = Booking.find(params[:id])
    end

    def destroy
      @booking.destroy
      redirect_to offer_path(@booking.user)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
