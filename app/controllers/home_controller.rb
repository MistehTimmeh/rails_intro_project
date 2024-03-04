class HomeController < ApplicationController
  def index
    @video_games = VideoGame.includes(:developer)
                            .order("metacritic_score DESC")
                            .limit(25)
    @publishers = Publisher.limit(10)
    @developers = Developer.limit(10)
  end
end
