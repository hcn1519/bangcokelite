class CreateAvgRatingScores < ActiveRecord::Migration
  def change
    create_table :avg_rating_scores do |t|
      t.integer :hasuk_house_id
      
      t.integer :how_many_people_did
      
      t.float :total_meal_score
      t.float :total_clean_score
      t.float :total_silence_score
      t.float :total_aircondition_score
      t.float :total_cctv_score
      t.float :total_score
      t.float :all_score
      
      t.timestamps null: false
    end
  end
end
