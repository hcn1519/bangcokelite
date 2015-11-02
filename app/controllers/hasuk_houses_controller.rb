class HasukHousesController < ApplicationController
  before_action :set_hasuk_house, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:index, :new, :edit, :update, :destory]
  # GET /hasuk_houses
  # GET /hasuk_houses.json
  def index
    @hasuk_houses = current_user.hasuk_houses

  end

  # GET /hasuk_houses/1
  # GET /hasuk_houses/1.json
  def show
    @hasuk_house = HasukHouse.find(params[:id])
  end

  # GET /hasuk_houses/new
  def new
    @hasuk_house = current_user.hasuk_houses.build
  end

  # GET /hasuk_houses/1/edit
  def edit
  end

  # POST /hasuk_houses
  # POST /hasuk_houses.json
  def create
    @hasuk_house = current_user.hasuk_houses.build(hasuk_house_params)
    @hasuk_house.user_id = current_user.id

    respond_to do |format|
      if @hasuk_house.save
        format.html { redirect_to @hasuk_house, notice: '성공적으로 등록되었습니다.' }
        format.json { render :show, status: :created, location: @hasuk_house }
      else
        format.html { render :new }
        format.json { render json: @hasuk_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hasuk_houses/1
  # PATCH/PUT /hasuk_houses/1.json
  def update
    respond_to do |format|
      if @hasuk_house.update(hasuk_house_params)
        format.html { redirect_to @hasuk_house, notice: '성공적으로 업데이트되었습니다.' }
        format.json { render :show, status: :ok, location: @hasuk_house }
      else
        format.html { render :edit }
        format.json { render json: @hasuk_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hasuk_houses/1
  # DELETE /hasuk_houses/1.json
  def destroy
    @hasuk_house.destroy
    respond_to do |format|
      format.html { redirect_to hasuk_houses_url, notice: '삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hasuk_house
      @hasuk_house = HasukHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hasuk_house_params
      params.require(:hasuk_house).permit(:hasuk_name, :celPhone, :telPhone, :memo, :hasuk_kind, :gender, :size_from, :size_to, :floor_from, :floor_to, :building_age, :remodeling, :small_deposit, :big_deposit, :price_from, :price_to, :least_contract, :extra_price1, :extra_price2, :extra_price3, :extra_price4, :extra_price5, :meal1, :meal2, :meal3, :meal4, :meal_memo, :personal_option1, :personal_option2, :personal_option3, :personal_option4, :personal_option5, :personal_option6, :personal_option7, :personal_option8, :personal_option9, :personal_option10, :personal_option11, :personal_option12, :personal_option13, :personal_option14, :personal_option15, :personal_option16, :personal_option17, :common_option1, :common_option2, :common_option3, :common_option4, :common_option5, :common_option6, :common_option7, :common_option8, :common_option9, :common_option10, :common_option11, :common_option12, :common_option13, :internet, :post_description, :address, :lat, :lng, :univ_distance1, :univ_distance2, :univ_distance3, :subway1, :subway2, :subway_distance1, :subway_distance2, :subway_distance_time1, :subway_distance_time2, :sogang_gate1, :sogang_gate2, :sogang_gate3, :ewha_gate1, :ewha_gate2, :ewha_gate3, :yonsei_gate1, :yonsei_gate2, :yonsei_gate3, :distance_time1, :distance_time2, :distance_time3, :distance1, :distance2, :distance3, :room_img1, :room_img2, :room_img3, :room_img4, :room_img5, :room_img6, :room_img7, :room_img8, :room_price1, :room_price2, :room_price3, :room_price4, :room_price5, :room_price6, :room_price7, :room_price8, :room_description1, :room_description2, :room_description3, :room_description4, :room_description5, :room_description6, :room_description7, :room_description8, :common_img1, :common_img2, :common_img3, :common_img4, :meal_img1, :meal_img2, :meal_img3, :meal_img4, :discount_price, :discount_rate)
    end
end
