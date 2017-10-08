class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  version :large do
    process resize_to_fit: [480, 480]
  end
end
