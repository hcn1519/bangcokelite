# encoding: utf-8
class S3uploaderUploader < CarrierWave::Uploader::Base
  
  include CarrierWave::MiniMagick
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  #이미지가 저장되는 위치
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

    #상세
    version :detail do
      process :quality => 90
      process :resize_to_fit => [600, 10000]
    end
    version :main, :if => :image?  do
        process :quality => 80
        process :resize_to_fit => [240, 10000] ,:if => :horizontal?
        process :resize_to_fit => [240, 10000]  ,:if => :vertical?
    end

def image?(new_file)
    self.file.content_type.include? 'image'
end

def horizontal?(new_file)
  image = MiniMagick::Image.open(self.file.file)
  true if image[:height] < image[:width]
end

def vertical?(new_file)
  image = MiniMagick::Image.open(self.file.file)
  true if image[:height] > image[:width]
end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  def cache_dir
    '/tmp/cache/s3file'
  end
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  #파일 필터링(이미지만 받기)
  def extension_white_list
    %w(jpg jpeg png gif)
  end
  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
