class MapController < ApplicationController
  def mappage
    @univ = params[:univ]

    @hasuk = HasukHouse.all()
  end

  def map_detail
  end

  def from_hasuk
    @place = HasukHouse.all()

    render json: @place
  end
end
