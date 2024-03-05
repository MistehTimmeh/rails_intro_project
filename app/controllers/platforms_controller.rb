class PlatformsController < ApplicationController
  def index
    @platforms = Platform.all
  end

  def show
    @platform = Platform.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @platforms = Platform.where("name LIKE ?", wildcard_search)
  end
end
