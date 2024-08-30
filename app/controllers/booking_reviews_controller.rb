class BookingReviewsController < ApplicationController
  before_action :set_booking_review, only: %i[new create show]

  def new
    @booking_review = BookingReview.new
  end

  def create
    @booking_review = BookingReview.new(booking_review_params)
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

  def set_booking_review
    @booking_review = BookingReview.find(params[:id])
  end

  def booking_review_params
    params.require(:booking_review).permit(:rating, :comment)
  end
end
