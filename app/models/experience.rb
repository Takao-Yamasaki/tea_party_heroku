class Experience < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :booking_users, through: :bookings, source: :user
  # バリデーションと関連付け
  has_many :likes, dependent: :destroy
  # experience.liked_usersでexperienceをいいねしているユーザの一覧を取得できる
  has_many :liked_users, through: :likes, source: :user
  
  has_many :reviews, dependent: :destroy
  
  mount_uploader :image, ImageUploader

  # geocoderの適用
  # :addressを登録した際にgeocoderが緯度経度ののカラムにも自動的に値を入れてくれる
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # いいねしているか判定
  def liked_by?(user)
    likes.find_by(user_id: user.id).present?
  end

  scope :start_after, -> (datetime) {
    datetime = datetime.to_datetime
    where('start_datetime > ?', datetime)
  }

  class << self
    def ransackable_scopes(auth_object = nill)
      [:start_after]
    end
  end
end
