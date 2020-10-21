class Api::V1::UsersController < ApplicationController
  def index 
    users = User.all

    render json: users
  end

  def create
    user = User.create!(user_params)

    render json: user
  end

  def show
    user = User.find(params[:id])

    render json: user
  end

  private 

  def user_params
    params.require(:user).permit(:username, :full_name, :password)
  end


end

#  json should look like
# users: {
#   [
#     {
#       "id": "1",
#       "username": "coderJay",
#       "full_name": "Zhenjian Liu"
#     },

#     {
#       "id": "2",
#       "username": "jsonC",
#       "full_name": "Jason Chilcott"
#     },

#     ...

#   ]
# }