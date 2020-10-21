class Movie < ApplicationRecord
  has_many :favor_videos
  has_many :users, through: :favor_videos
end