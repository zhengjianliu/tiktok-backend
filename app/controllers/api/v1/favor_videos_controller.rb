class Api::V1::FavorVideosController < ApplicationController
  def index 
    favor_videos = Favor_videos.All

    render json: favor_videos
  end
end