class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # first_nameを追記
  validates :first_name, presence: true
  # last_nameを追記
  validates :last_name, presence: true
  # ImageUploaderとusersテーブルのimageカラムと連携
  mount_uploader :image, ImageUploader
end
