class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :booking_experiences, through: :bookings, source: :experience
  # バリデーションと関連付け
  has_many :likes, dependent: :destroy
  # user.liked_postsでuserがいいねしている体験一覧を取得できるようになる
  has_many :liked_experiences, through: :likes, source: :experience
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # first_nameを追記
  validates :first_name, presence: true
  # last_nameを追記
  validates :last_name, presence: true
  # ImageUploaderとusersテーブルのimageカラムと連携
  mount_uploader :image, ImageUploader
end
