class Api::V1::VideosController < ApplicationController

  # possibly get rid of videos table, model, contoller, routes 

  
  def index 
    videos = Video.all

    render json: videos
  end

  def show
    video = Video.find(params[:id])

    render json: video
  end



  private 

  def video_params
    params.require(:video).permit(:video_name, :author, :video_id)
  end
end