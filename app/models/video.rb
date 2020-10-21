# possibly get rid of this?

class Video < ApplicationRecord
  has_many :favor_videos
  has_many :users, through: :favor_videos
end