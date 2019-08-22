class PodcastsController < ApplicationController
  def index
  end

  def new
    render_404  if !current_user.is_admin    
  end

  def create
    podcast = Podcast.new
    podcast.date = params[:date]
    podcast.title = params[:title]
    podcast.url = params[:url]
    podcast.campus_id = params[:campus_id]
    podcast.save!
    redirect_to '/podcasts'
  end

  def show 
    @podcast = Podcast.find_by(id: params[:id])
  end

  def edit
    if !current_user.is_admin
      render_404
    else
      @podcast = Podcast.find_by(id: params[:id])
    end
  end

  def update
    podcast = Podcast.find_by(id: params[:id])
    podcast.date = params[:date]
    podcast.title = params[:title]
    podcast.url = params[:url]
    podcast.campus_id = params[:campus_id]
    podcast.save!
    redirect_to podcast
  end

  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
    redirect_to '/podcasts'
  end
end
