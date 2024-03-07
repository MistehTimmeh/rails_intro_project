class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @publishers = Publisher.where("name LIKE ?", wildcard_search)
  end
end
