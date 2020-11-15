class Experience < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
