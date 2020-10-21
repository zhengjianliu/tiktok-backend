class Api::V1::FavorVideosController < ApplicationController
  def index 
    favor_videos = Favor_videos.All

    render json: favor_videos
  end

  def create
    favor_video = Favor_video.create!(favor_video_params)

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