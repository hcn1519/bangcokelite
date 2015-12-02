class HasukHouse < ActiveRecord::Base
    belongs_to :user
    has_many :favorite_hasuk_houses
    has_many :favorited_by, through: :favorite_hasuk_houses, source: :user 
    
    mount_uploader :room_img1, S3uploaderUploader
    mount_uploader :room_img2, S3uploaderUploader
    mount_uploader :room_img3, S3uploaderUploader
    mount_uploader :room_img4, S3uploaderUploader
    mount_uploader :room_img5, S3uploaderUploader
    mount_uploader :room_img6, S3uploaderUploader
    mount_uploader :room_img7, S3uploaderUploader
    mount_uploader :room_img8, S3uploaderUploader
    mount_uploader :common_img1, S3uploaderUploader
    mount_uploader :common_img2, S3uploaderUploader
    mount_uploader :common_img3, S3uploaderUploader
    mount_uploader :common_img4, S3uploaderUploader
    mount_uploader :meal_img1, S3uploaderUploader
    mount_uploader :meal_img2, S3uploaderUploader
    mount_uploader :meal_img3, S3uploaderUploader
    mount_uploader :meal_img4, S3uploaderUploader
end
