class Attachment < ActiveRecord::Base
    belongs_to :hasuk_house
    mount_uploader :img, S3uploaderUploader
end
