class ProfilePhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  storage :file

if Rails.env.test?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def default_url(*args)
   "https://good-places-good-food-production.s3.amazonaws.com/User+default+picture/download.jpg" 
  end
end