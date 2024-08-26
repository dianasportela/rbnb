class CastlesController < ApplicationController
  def castle
    @castles = Castle.all
  end
end
