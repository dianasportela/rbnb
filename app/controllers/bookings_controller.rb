class BookingsController < ApplicationController
  before_action :set_castle, only: [:new, :create]
  
  def new
    @booking = Booking.new
    set_castle
  end

  def create
    @booking = Booking.new(booking_params)
    set_castle
    @booking.castle = @castle
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
    params.require(:booking).permit(:name)
  end
end
