class FavorVideo < ApplicationRecord
  belongs_to :users
  belongs_to :videos
  # possibly get rid of videos?
end



# proposed version without videos table??

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

#     "user_id": "2",
#     "favorVideos": {
#       "videoId": [
#         "vfsutsfyfsyfoiyfos6gohuigsfo7f",
#         "ysctufsyi6s8g8i6gsyfsyfhsfdftfy"
#       ]
#     }
#   ]
# }