class NewsController < ApplicationController
  def index
  end

  def show
    @news = News.find_by(id: params[:id])
  end
end
