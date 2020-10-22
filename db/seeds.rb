# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying users"
User.destroy_all
puts "creating users"
users = [
  {
    userName: "Jayliu1234",
    fullName: "ZHENGJIANLIU",
    password: "12345"
  },
  {
    userName: "heyhey",
    fullName: "heyhey wong",
    password: "54321"
  }
]
users.each do |user|
  User.create!(user)
end



# FavorVideos:
# {
#   "UserInfo": [
#     "user_id": "1",
#     "favorVideos": {
#       "videoId": [
#         "vfsutsfyfsyfoiyfos6gohuigsfo7f",
#         "ysctufsyi6s8g8i6gsyfsyfhsfdftfy"
#       ]
#     }
#
#     "user_id": "2",
#     "favorVideos": {
#       "videoId": [
#         "vfsutsfyfsyfoiyfos6gohuigsfo7f",
#         "ysctufsyi6s8g8i6gsyfsyfhsfdftfy"
#       ]
#     }
#   ]
# }

puts "Destroying favor_videos"
FavorVideo.destroy_all
puts "creating favor_videos"
favor_videos = [
  # {
  #   "user_id": "1",
  #   "favorVideos": {
  #     "video_id": [
  #       "vfsutsfyfsyfoiyfos6gohuigsfo7f",
  #       "ysctufsyi6s8g8i6gsyfsyfhsfdftfy"
  #     ]
  #   }
  # }
  {
    "user_id": "1",
    "video_id":"vfsutsfyfsyfoiyfos6gohuigsfo7f"
  }
]


favor_videos.each do |favor|
  FavorVideo.create!(favor)
end
