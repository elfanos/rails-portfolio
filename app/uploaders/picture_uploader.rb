class PictureUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog
  #storage :file
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  process :resize_to_fit => [1024, 1024]
  #
  # def scale(width, height)
  #   process :resize_to_fit => [width,height]
  #   # do something
  # end
  version :article_thumb do
    process :resize_to_fit =>[450,600]
  end
  version :width_thumb do
    process :resize_to_fill => [390,300]
  end

  version :normal_thumb do
    process :resize_to_fill => [700,700]
  end
  version :height_thumb do
    process :resize_to_fill => [250,300]
  end

  version :height_thumb_more_width do
    process :resize_to_fill => [270,300]
  end

  version :height_thumb_less_width do
    process :resize_to_fill => [240,300]
  end
  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [320, 310]
  end
  version :picture_view do
    process :resize_to_fit => [900,900]
  end
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
