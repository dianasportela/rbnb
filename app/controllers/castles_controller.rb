class CastlesController < ApplicationController
  before_action :set_castle, only: %i[show]

  def index
    @castles = Castle.all
  end

  def new
    @castle = Castle.new
  end

  def show
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end

end
