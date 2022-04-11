class WatchProgress < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :user_id, uniqueness: {
                      scope: :movie_id,
                      message: "は同じテキスト教材を２回以上読破済みにはできません",
                      }
end