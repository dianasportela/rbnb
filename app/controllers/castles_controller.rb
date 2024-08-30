class CastlesController < ApplicationController
  before_action :set_castle, only: %i[destroy edit show update]
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    @castles = Castle.geocoded
    @markers = @castles.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude,
        info_window: render_to_string(partial: "popup", locals: {castle: castle}),
        marker_html: render_to_string(partial: "marker")
      }
    end
    if params[:query].present?
      @castles = @castles.global_search(params[:query])
    end
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user = current_user
    if @castle.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
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
    if @castle.destroy
      redirect_to root_path, status: :see_other, notice: "Castle was successfully destroyed."
    else
      render 'show', status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def castle_params
    params.require(:castle).permit(:castle_name, :overview, :location, :castle_avg_rating, :min_price, :availability, photos: [])
  end

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
