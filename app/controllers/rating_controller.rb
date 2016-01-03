class RatingController < ApplicationController
    def create
        @myscore = RatingForHasukHouse.create( user_id: current_user.id,
                                      avg_rating_score_id: params[:hasuk_house_id],
                                      meal_score: params[:review1],
                                      clean_score: params[:review2],
                                      silence_score: params[:review3],
                                      aircondition_score: params[:review4],
                                      cctv_score: params[:review5],
                                      total_score: params[:review6],
                                      comment: params[:comment],
                                      all_score: params[:all_score]
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
        @avg_score[0].all_score = @avg_score[0].all_score + @myscore.all_score
        @avg_score[0].save

    redirect_to :back
    end
    
    def destroy
        #삭제할 데이터 찾기
        @destroy_rate = RatingForHasukHouse.where(:avg_rating_score_id => params[:hasuk_house_id], :user_id => params[:id])
        
        #평균 데이터 업데이트
        @destroy_avg = AvgRatingScore.where(hasuk_house_id: params[:hasuk_house_id])
        @destroy_avg[0].how_many_people_did = @destroy_avg[0].how_many_people_did - 1
        @destroy_avg[0].total_meal_score = @destroy_avg[0].total_meal_score - @destroy_rate[0].meal_score
        @destroy_avg[0].total_clean_score = @destroy_avg[0].total_clean_score - @destroy_rate[0].clean_score
        @destroy_avg[0].total_silence_score = @destroy_avg[0].total_silence_score - @destroy_rate[0].silence_score
        @destroy_avg[0].total_aircondition_score = @destroy_avg[0].total_aircondition_score - @destroy_rate[0].aircondition_score
        @destroy_avg[0].total_cctv_score = @destroy_avg[0].total_cctv_score - @destroy_rate[0].cctv_score
        @destroy_avg[0].total_score = @destroy_avg[0].total_score - @destroy_rate[0].total_score
        @destroy_avg[0].all_score = @destroy_avg[0].all_score - @destroy_rate[0].all_score
        @destroy_avg[0].save
        
        @destroy_rate[0].destroy
    
    redirect_to :back
    end
end
