class Api::V1::VideosController < ApplicationController
  def index 
    videos = Video.All

    render json: videos
  end

  def show
    video = video.find(params[:id])

    render json: video
  end



  private 

  def video_params
    params.require(:video).permit(:video_name, :author, :video_id)
  end
end