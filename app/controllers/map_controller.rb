class MapController < ApplicationController
  def mappage
    @univ = params[:univ]

    @hasuk = HasukHouse.all()
    @hasuk = HasukHouse.all.sort { |p1, p2| [p2.discount_price, p1.distance_time1] <=> [p1.discount_price, p2.distance_time1] }
    
    
  end

  def map_detail
    @hasuk = HasukHouse.all.sort { |p1, p2| [p2.discount_price, p1.distance_time1] <=> [p1.discount_price, p2.distance_time1] }
    
    @univ = params[:univ]
    @hasuk_kind = params[:hasuk_kind]
    @gender = params[:gender]
    @price_from = params[:price_from]
    @price_to = params[:price_to]
    @section = params[:section]
    @distance = params[:distance]
  end

  def from_hasuk
    @place = HasukHouse.all
    @place = HasukHouse.all.sort { |p1, p2| [p2.discount_price, p1.distance_time1] <=> [p1.discount_price, p2.distance_time1] }
    
    
    render json: @place
  end
end
