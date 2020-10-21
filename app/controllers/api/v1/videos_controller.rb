class Api::V1::VideosController < ApplicationController
  def index 
    videos = Video.ApplicationController

    render json: videos
  end
end