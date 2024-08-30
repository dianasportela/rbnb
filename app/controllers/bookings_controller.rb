class BookingsController < ApplicationController
  before_action :set_castle, only: %i[new create]
  before_action :set_booking, only: %i[edit update]

  def index
    @bookings = Booking.all
  end

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

      render 'castles/show', status: :unprocessable_entity
    end
  end

# ADDING THE EDIT AND UPDATE

  def edit

  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # def destroy
  #   if @castle.destroy
  #     redirect_to root_path, status: :see_other, notice: "Castle was successfully destroyed."
  #   else
  #     render 'show', status: :unprocessable_entity
  #   end
  # end


  def show
    @bookings = current_user.bookings
  end

  private

  def set_castle
    @castle = Castle.find(params[:castle_id])
  end

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
