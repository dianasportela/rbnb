class CastlesController < ApplicationController
  before_action :set_castle, only: %i[ destroy edit show update ]
  skip_before_action :authenticate_user!, only: :show

  def index
    @castles = Castle.all
  end

  def new
    @castle = Castle.new
  end

  def edit
  end

  def update
    if @castle.update(castle_params)
      redirect_to @castle, notice: "Castle was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @castle.destroy

    redirect_to castles_path, notice: "Castle was successfully destroyed.", status: :see_other
  end

  def show
  end

  private

  def castle_params
    params.require(:castle).permit(:overview)
  end

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
