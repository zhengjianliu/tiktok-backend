class User < ApplicationRecord
  has_many :favor_videos
  has_many :videos, through: :favor_videos
# possibly get rid of videos?
  validates :username, uniqueness:true
end