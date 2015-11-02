class MapController < ApplicationController
  def mappage
    @univ = params[:univ]

    @hasuk = HasukHouse.all()
  end

  def map_detail
    @univ = params[:univ]
    @hasuk_kind = params[:hasuk_kind]
    @gender = params[:gender]
    @price_from = params[:price_from]
    @price_to = params[:price_to]
    @section = params[:section]
    @distance = params[:distance]
  end

  def from_hasuk
    @place = HasukHouse.all()

    render json: @place
  end
end
