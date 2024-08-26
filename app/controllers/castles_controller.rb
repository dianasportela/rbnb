class CastlesController < ApplicationController
  before action: set_castle, only: %i[ destroy edit show update ]

  def destroy
    set_castle
    @castle.destroy

    redirect_to castles_path, notice: "Castle was successfully destroyed.", status: :see_other
  end

  def edit
  end

  def show
  end

  def update
    if @castle.update(castle_params)
      redirect_to @castle, notice: "Castle was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def castle_params
    params.require(:castle).permit(:comment, :movie_id, :list_id)
  end

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
