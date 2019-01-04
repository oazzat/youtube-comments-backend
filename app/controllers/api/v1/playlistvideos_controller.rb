class Api::V1::PlaylistvideosController < ApplicationController
  def index
      @playlistvideos = Playlistvideo.all
    render json: @playlistvideos
  end

  def create

    @playlistvideo = Playlistvideo.create(playlistvideo_params)
    render json: @playlistvideo
  end

  def destroy

    @playlistvideo = Playlistvideo.find(params[:id])
      @pvid = @playlistvideo.id
    @playlistvideo.destroy
    render json: {message:"Zap! Note deleted", pvId:@pvid}
  end

  def show
    @playlistvideo = Playlistvideo.find(params[:id])
    render json: @playlistvideo, status: 200
  end

  end

  def playlistvideo_params
  params.permit(:playlist_id, :video_id)
  end
