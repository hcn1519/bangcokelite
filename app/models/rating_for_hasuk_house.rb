class RatingForHasukHouse < ActiveRecord::Base
    belongs_to :user
    belongs_to :avg_rating_score
end
