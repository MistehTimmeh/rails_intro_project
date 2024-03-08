class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])
    @developer = Developer.joins(:video_games).where("video_games.id = ?", params[:id]).first
    @publisher = Publisher.joins(:video_games).where("video_games.id = ?", params[:id]).first
    @platform = Platform.joins(:video_games).where("video_games.id = ?", params[:id]).first
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @video_games = VideoGame.where("name LIKE ?", wildcard_search)
  end
end
