class AdminController < ApplicationController
  before_filter :authenticate_user!, only: [:hasuk_houses, :users]
  
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
end
