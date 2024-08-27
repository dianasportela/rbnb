class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ destroy edit show update ]
  skip_before_action :authenticate_user!, only: :show

  def index
    @bookings = booking.all
  end

  def new
    @booking = booking.new
  end

  def create
    @booking = booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "booking was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path, notice: "booking was successfully destroyed.", status: :see_other
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_name, :overview, :location, :booking_picture)
  end

  def set_booking
    @booking = booking.find(params[:id])
  end
end
