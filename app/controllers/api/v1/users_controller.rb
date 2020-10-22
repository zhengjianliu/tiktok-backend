class Api::V1::UsersController < ApplicationController

    def index
      users = User.all
      render json: users, only: [:id, :fullName, :userName, :password]
    end

    def show
      users = User.find_by(params[:id])
      render json: users
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
