class NewsController < ApplicationController

  def new
    render_404 if !current_user.is_admin
  end

  def create
    news = News.new
    news.image_url = params[:image_url]
    news.date = params[:date]
    news.title = params[:title]
    news.description = params[:description]
    news.campus_id = params[:campus_id]
    news.save!
    redirect_to '/news'
  end

  def index
  end

  def show
    @news = News.find_by(id: params[:id]) || nil
  end

  def edit
    if !current_user.is_admin
      render_404
    else
      @news = News.find_by(id: params[:id])
    end
  end

  def update
    news = News.find_by(id: params[:id])
    news.image_url = params[:image_url]
    news.date = params[:date]
    news.title = params[:title]
    news.description = params[:description]
    news.campus_id = params[:campus_id]
    news.save!
    redirect_to news
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to '/news'
  end
end
