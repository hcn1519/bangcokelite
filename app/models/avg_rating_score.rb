class AvgRatingScore < ActiveRecord::Base
    belongs_to :hasuk_house
    has_many :rating_for_hasuk_houses
end
