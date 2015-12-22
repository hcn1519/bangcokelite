class CreateRatingForHasukHouses < ActiveRecord::Migration
  def change
    create_table :rating_for_hasuk_houses do |t|
      t.integer :user_id
      t.integer :avg_rating_score_id
      
      t.float :meal_score
      t.float :clean_score
      t.float :owner_score
      t.float :silence_score
      t.float :aircondition_score
      t.float :cctv_score
      t.float :total_score
      
      t.timestamps null: false
    end
  end
end
