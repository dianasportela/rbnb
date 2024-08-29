class UsersController < ApplicationController
  before_action :set_user, only: :show

  # depreciated method - moved to 'bookings_controller'
  def show
    @bookings = current_user.bookings
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
