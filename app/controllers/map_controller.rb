class MapController < ApplicationController
  def mappage
    @univ = params[:univ]

    @hasuk = HasukHouse.all()
    @hasuk = HasukHouse.all.sort { |p1, p2| [p1.price_from, p1.price_to, p1.distance1] <=> [p2.price_from, p2.price_to, p2.distance1] }
    
    
  end

  def map_detail
    @hasuk = HasukHouse.all.sort { |p1, p2| [p1.price_from, p1.price_to, p1.distance1] <=> [p2.price_from, p2.price_to, p2.distance1] }
    
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
    @place = HasukHouse.all.sort { |p1, p2| [p1.price_from, p1.price_to, p1.distance1] <=> [p2.price_from, p2.price_to, p2.distance1] }
    
    
    render json: @place
  end
  
    def myfavorite
      @like = current_user.favorites.uniq
    end
end
