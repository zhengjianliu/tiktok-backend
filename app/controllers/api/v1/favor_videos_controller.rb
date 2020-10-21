class Api::V1::FavorVideosController < ApplicationController
  #before_action :current_user


  def index 
    favor_videos = Favor_videos.all

    render json: favor_videos
  end

  def create
    favor_video = Favor_video.create!(favor_video_params)
    #favor_video = current_user.Favor_video.create!(favor_video_params)

    render json: favor_video
  end

  def destroy
    favor_video = Favor_video.find(params[:id])
    favor_video.destroy

    render json: {}
  end

  private 

  def favor_video_params
    params.require(:favor_video).permit(:video, :user)
  end
end


# proposed version without videos table??
# "videoId" being youtube's hash video id 

# favorVideos:
# {
#   "userInfo": [
  
#     "user_id": "1",
#     "favorVideos": {
#       "videoId": [
#         "vfsutsfyfsyfoiyfos6gohuigsfo7f",
#         "ysctufsyi6s8g8i6gsyfsyfhsfdftfy",
#         ...
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