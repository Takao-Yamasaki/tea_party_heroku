class ImageUploader < CarrierWave::Uploader::Base
  
  if Rails.env.production?
    storage :fog
  else
    # storage :file
    storage :fog
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # 画像ファイル形式のバリデーション
  def extention_whilelist
    %w(jpg jpeg gif png)
  end

  # 画像ファイルサイズのバリデーション
  def size_range
    0..5.megabytes
  end

  # デフォルト画像の表示
  def default_url(*args)
    "/images/fallback/" + [version_name, "user_default.png"].compact.join('_')
  end

  # ファイル名をランダムに3変更
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end

  include CarrierWave::MiniMagick
  # サムネイル画像の作成
  # process resize_to_fit: [200, 300]

end
