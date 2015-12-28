class ImgUploadController < ApplicationController
  def create
    params[:user_pic].each do |pic|
      Attachment.create(
            hasuk_house_id: params[:hasuk_house_id],
            user_id: current_user.id,
            img: pic
      )
    end
    redirect_to :back
  end
  
end
