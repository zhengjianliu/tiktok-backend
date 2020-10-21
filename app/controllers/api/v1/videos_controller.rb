class Api::V1::VideosController < ApplicationController
  def index 
    videos = Video.All

    render json: videos
  end

  

  private 

  def video_params
    params.require(:video).permit(:video_name, :author)
  end
end