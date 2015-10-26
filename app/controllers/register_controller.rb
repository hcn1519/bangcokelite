class RegisterController < ApplicationController
  def create
  end

  def edit
  end

  def show
  end

  def delete
  end
  def create_work
    @hasuk = HasukHouse.new
      @hasuk.celPhone = params[:celPhone]
      @hasuk.telPhone = params[:telPhone]
      @hasuk.memo = params[:memo]
      
      @hasuk.address = params[:address]
      @hasuk.lat = params[:lat]
      @hasuk.lng = params[:lng]
      
      @hasuk.univ_distance1 = params[:univ_distance1]
      @hasuk.univ_distance2 = params[:univ_distance2]
      @hasuk.univ_distance3 = params[:univ_distance3]
      @hasuk.sogang_gate1 = params[:sogang_gate1]
      @hasuk.sogang_gate2 = params[:sogang_gate2]
      @hasuk.sogang_gate3 = params[:sogang_gate3]
      @hasuk.ewha_gate1 = params[:ewha_gate1]
      @hasuk.ewha_gate2 = params[:ewha_gate2]
      @hasuk.ewha_gate3 = params[:ewha_gate3]
      @hasuk.yonsei_gate1 = params[:yonsei_gate1]
      @hasuk.yonsei_gate2 = params[:yonsei_gate2]
      @hasuk.yonsei_gate3 = params[:yonsei_gate3]
      @hasuk.distance_time1 = params[:distance_time1]
      @hasuk.distance_time2 = params[:distance_time2]
      @hasuk.distance_time3 = params[:distance_time3]
      @hasuk.distance1 = params[:distance1]
      @hasuk.distance2 = params[:distance2]
      @hasuk.distance3 = params[:distance3]
      
      
      @hasuk.hasuk_name = params[:hasuk_name]
      @hasuk.hasuk_kind = params[:hasuk_kind]
      @hasuk.gender = params[:gender]
      
      
      @hasuk.size_from = params[:size_from]
      @hasuk.size_to = params[:size_to]
      
      @hasuk.floor_from = params[:floor_from]
      @hasuk.floor_to = params[:floor_to]
      
      
      @hasuk.building_age = params[:building_age]
      @hasuk.remodeling = params[:remodeling]
      @hasuk.small_deposit = params[:small_deposit]
      @hasuk.big_deposit = params[:big_deposit]
     
      @hasuk.price_from = params[:price_from]
      @hasuk.price_to = params[:price_to]
      @hasuk.least_contract = params[:least_contract]
      @hasuk.extra_price = params[:extra_price]
      
      @hasuk.meal = params[:meal]
      @hasuk.meal_memo = params[:meal_memo]
      
      @hasuk.personal_option = params[:personal_option]
      @hasuk.common_option = params[:common_option]
      @hasuk.internet = params[:internet]
      
      @hasuk.post_description = params[:post_description]
      
      @hasuk.room_img = params[:room_img]
      @hasuk.room_price = params[:room_price]
      @hasuk.room_description = params[:room_description]
      
      @hasuk.common_img = params[:common_img]
      @hasuk.meal_img = params[:meal_img]
      
      @hasuk.discount_price = params[:discount_price]
      @hasuk.discount_rate = [:discount_rate]
      @hasuk.save
      
      redirect_to '/register/show'
  end
end
