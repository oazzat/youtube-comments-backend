class Api::V1::UsersController < ApplicationController

  def index
      @users = User.all
    render json: @users
  end

  def create

    @user = User.create(user_params)
    @playlist = Playlist.create(name: @user.name, user_id: @user.id )
    @user.playlist_id = @playlist.id
    @user.save
    
    render json: @user
  end

end

def user_params
  params.permit(:name, :playlist_id)
end
