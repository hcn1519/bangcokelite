class HasukHousesController < ApplicationController
  before_action :set_hasuk_house, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:index, :new, :edit, :update, :destory]
  # GET /hasuk_houses
  # GET /hasuk_houses.json
  respond_to :js, :html, :json
  
  impressionist :actions=>[:show]
  
  def favorite
    @hasuk_house = HasukHouse.find_by_id(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @hasuk_house

    elsif type == "unfavorite"
      current_user.favorites.delete(@hasuk_house)

    else
      redirect_to :back, notice: 'Nothing happened.'
    end
    
    if request.xhr?
      render json: { count: @hasuk_house.favorited_by.size, id: params[:id] }
    else
      redirect_to @hasuk_house
    end
  end
  
  
  def index
    @hasuk_houses = current_user.hasuk_houses
  end
  
  # GET /hasuk_houses/1
  # GET /hasuk_houses/1.json
  def show
    @hasuk_house = HasukHouse.find(params[:id])
    impressionist(@hasuk_house)

    @avg_score = AvgRatingScore.where(hasuk_house_id: @hasuk_house.id)
    
    if @avg_score[0].nil?
    #없으면
      @avg_score[0] = AvgRatingScore.new
      @avg_score[0].hasuk_house_id = @hasuk_house.id
      @avg_score[0].how_many_people_did = 0
      @avg_score[0].total_meal_score =  0
      @avg_score[0].total_clean_score =  0
      @avg_score[0].total_silence_score =  0
      @avg_score[0].total_aircondition_score = 0
      @avg_score[0].total_cctv_score = 0
      @avg_score[0].total_score = 0
      @avg_score[0].all_score = 0
      @avg_score[0].save
    end
    
    @user_comment = RatingForHasukHouse.where(avg_rating_score_id: @hasuk_house.id)
    @users_hasuk_img = Attachment.where(hasuk_house_id: @hasuk_house.id);
	if user_signed_in?
    @current_user_rate = RatingForHasukHouse.where(avg_rating_score_id: @hasuk_house.id, user_id: current_user.id)
	end  
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
    
    flash[:notice] = "성공적으로 등록되었습니다." if @hasuk_house.save
    respond_with(@hasuk_house)
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
      params.require(:hasuk_house).permit(:hasuk_name, :celPhone, :telPhone, :contact_memo, :hasuk_kind, :gender, :small_deposit, :big_deposit, :admin_fee, :price_from, :price_to, :miniroom_price_from, :miniroom_price_to, :oneroom_price_from, :oneroom_price_to, :sleeping_only_price_from, :mate_price_from, :least_contract, :title, :hasuk_house_description, :address, :lat, :lng, :division, :univ1, :univ2, :gate1, :gate2, :distance_time1, :distance_time2, :distance1, :distance2, :trans_kind1, :trans_kind2, :station1, :station2, :trans_distance_time1, :trans_distance1, :trans_distance_time2, :trans_distance2, :main_img)
    end
end
