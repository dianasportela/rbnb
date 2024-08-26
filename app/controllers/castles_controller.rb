class CastlesController < ApplicationController
  def new
    @castle = Castle.new
  end


  before_action :set_castle, only: %i[show edit update destroy]

  def show
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end

end
