class FavoriteHasukHouse < ActiveRecord::Base
    belongs_to :hasuk_house
    belongs_to :user
end
