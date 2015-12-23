class RatingController < ApplicationController
    def create
       # @hasuk_house = HasukHouse.find(params[:hasuk_house_id])
        
        @myscore = RatingForHasukHouse.create( user_id: current_user.id,
                                      avg_rating_score_id: params[:hasuk_house_id],
                                      meal_score: params[:review1],
                                      clean_score: params[:review2],
                                      silence_score: params[:review3],
                                      aircondition_score: params[:review4],
                                      cctv_score: params[:review5],
                                      total_score: params[:review6]
                                    )
        
        @avg_score = AvgRatingScore.where(hasuk_house_id: params[:hasuk_house_id])
        
        @avg_score[0].hasuk_house_id = params[:hasuk_house_id]
        @avg_score[0].how_many_people_did = @avg_score[0].how_many_people_did + 1
        @avg_score[0].total_meal_score = @avg_score[0].total_meal_score + @myscore.meal_score
        @avg_score[0].total_clean_score = @avg_score[0].total_clean_score + @myscore.clean_score
        @avg_score[0].total_silence_score = @avg_score[0].total_silence_score + @myscore.silence_score
        @avg_score[0].total_aircondition_score = @avg_score[0].total_aircondition_score + @myscore.aircondition_score
        @avg_score[0].total_cctv_score = @avg_score[0].total_cctv_score + @myscore.cctv_score
        @avg_score[0].total_score = @avg_score[0].total_score + @myscore.total_score
        @avg_score[0].save

    redirect_to :back
    end
end
