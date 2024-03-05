class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @video_games = VideoGame.where("name LIKE ?", wildcard_search)
  end
end
