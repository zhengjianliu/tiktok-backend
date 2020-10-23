class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, only: [:id, :fullName, :userName, :password]
  end

  def show
    user = User.find(params[:id])

    render json: user
  end

  def create
    user = User.create!(user_params)
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:userName, :fullName, :password)
  end

end
