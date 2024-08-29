class UsersController < ApplicationController
  before_action :set_user, only: :show

  def show
    @bookings = current_user.bookings
    @castle = Castle.new
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
