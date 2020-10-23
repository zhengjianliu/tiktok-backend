class Api::V1::FavorsController < ApplicationController
  def index
    favors = Favor.all
    render json: favors, only: [:id, :user_id, :favor_videos]
  end

  def show
    favor = Favor.find(params[:id])
    render json: favor
  end

  def create
    favor = Favor.create!(favor_params)
    render json: favor
  end

  def destroy
    favor = Favor.find(params[:id]).destroy
    render json: favor
  end

  private

  def favor_params
    params.require(:favor).permit!
  end

end
