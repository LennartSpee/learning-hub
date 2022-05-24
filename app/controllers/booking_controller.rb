class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:id])
    if @booking.save
      flash[:success] = "Booking successfully done"
      redirect_to @offer
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end

    def show
      @booking = booking.find(params[:id])
    end

    def destroy
      @booking.destroy
      redirect_to offer_path(@booking.user)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :offer_id, :timing)
  end
end
