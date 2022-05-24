class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      flash[:success] = "Booking successfully done"
      redirect_to booking_path(@booking)
    else
      flash[:error] = "Something went wrong"
      render :new
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
    params.require(:booking).permit(:offer_id, :starting_date, :ending_date)
  end
end
