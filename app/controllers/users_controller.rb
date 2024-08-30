class UsersController < ApplicationController
  before_action :set_user, only: :show

  # depreciated method - moved to 'bookings_controller'
  def show
    @bookings = current_user.bookings
    @castle = Castle.new
    @my_castles = current_user.castles
    @allbookings = @castle.bookings.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def castle_params
    params.require(:castle).permit(:castle_name, :overview, :location, :castle_avg_rating, :min_price, :availability, photos: [])
  end

end
