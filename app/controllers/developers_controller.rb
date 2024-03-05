class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @developers = Developer.where("name LIKE ?", wildcard_search)
  end
end