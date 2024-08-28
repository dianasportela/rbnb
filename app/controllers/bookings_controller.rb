class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @castle = Castle.find(params[:castle_id])
    @booking.castle = @castle
    if @booking.save
      redirect_to castle_path(@castle)
    else
      render 'new', status: :unprocessable_entity
    end
  end

end
