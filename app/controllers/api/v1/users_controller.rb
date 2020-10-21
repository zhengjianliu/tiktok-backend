class Api::V1::UsersController < ApplicationController
  def index 
    users = User.All

    render json: users
  end

  def create
    user = User.create!(user_params)
  end

  private 

  def user_params
    params.require(:user).permit(:username, :full_name, :password)
  end


end