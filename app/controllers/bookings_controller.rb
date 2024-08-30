class BookingsController < ApplicationController
  before_action :set_castle, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.castle = @castle
    @booking.user = current_user
    stay = @booking.date_end - @booking.date_start
    @booking.price = stay * @castle.min_price
    if @booking.save
      redirect_to castle_path(@castle)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def set_castle
    @castle = Castle.find(params[:castle_id])
  end

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end
