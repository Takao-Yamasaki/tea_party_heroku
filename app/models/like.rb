class Like < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validates :user_id, uniqueness: {
    scope: :experience_id,
    message: "は同じ投稿に２回以上いいねはできません"
  }
end
