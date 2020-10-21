class Api::V1::VideosController < ApplicationController
  def index 
    videos = Video.All

    render json: videos
  end
end