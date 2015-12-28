class HasukHouse < ActiveRecord::Base
    has_one :avg_rating_score
    
    belongs_to :user
    has_many :favorite_hasuk_houses
    has_many :favorited_by, through: :favorite_hasuk_houses, source: :user 
    
    has_many :attachments
    mount_uploader :main_img, S3uploaderUploader
end
