class Api::V1::VideosController < ApplicationController
  def index
      @videos = Video.all
    render json: @videos
  end

  def create

    video = Video.create(video_params)
    render json: video
  end

  end

  def video_params
  params.permit(:title, :youtubeId, :author, :typee, :score, :ratio, :keywords)
  end
