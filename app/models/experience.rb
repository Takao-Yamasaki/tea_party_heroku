class Experience < ApplicationRecord
  has_many :bookings, dependent: :destroy

  mount_uploader :image, ImageUploader
end
