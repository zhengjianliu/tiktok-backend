class Api::V1::UsersController < ApplicationController
  def index 
    users = User.All

    render json: users
  end
end