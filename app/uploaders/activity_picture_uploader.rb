class ActivityPictureUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "picture_activity_default.jpg"].compact.join("_"))
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
