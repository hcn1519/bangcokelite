class AdminController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :hasuk_houses, :users, :reviews]
  
  def index
    @hasuk_houses = HasukHouse.all()
    @users = User.all()
    
    @admin = User.find(2)
    unless current_user.id == @admin.id
      redirect_to root_path
    end
  end
  def hasuk_houses
    @hasuk_houses = HasukHouse.all()
    
    @admin = User.find(2)
    unless current_user.id == @admin.id
      redirect_to root_path
    end
  end

  def users
    @users = User.all()
    
    @admin = User.find(2)
    unless current_user.id == @admin.id
      redirect_to root_path
    end
  end
  def reviews
    @reviews = RatingForHasukHouse.all()
    
    @admin = User.find(2)
    unless current_user.id == @admin.id
      redirect_to root_path
    end
  end
end
