class Experience < ApplicationRecord
  has_many :bookings, dependent: :destroy

  mount_uploader :image, ImageUploader

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
