class ImageUploader < CarrierWave::Uploader::Base
  
  storage :file
  
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
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end
end
