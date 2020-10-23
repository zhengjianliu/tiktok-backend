class Favor < ApplicationRecord
  validates :user_id, uniqueness: {scope: :favor_videos}
end
