class Api::V1::PlaylistsController < ApplicationController
  def index
      @playlists = Playlist.all
    render json: @playlists
  end

  def create

    @playlist = Playlist.create(playlist_params)
    render json: @playlist
  end

  end

  def playlist_params
  params.permit(:name, :user_id)
  end
