class Api::V1::UsersController < ApplicationController

  def index
      @users = User.all
    render json: @users
  end

  def create

    user = User.create(user_params)
    render json: user
  end

end

def user_params
  params.permit(:name)
end
