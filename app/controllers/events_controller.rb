class EventsController < ApplicationController
  def index
  end

  def new
    render_404 if !current_user.is_admin
  end

  def create
    event = Event.new
    event.image_url = params[:image_url]
    event.date = params[:date]
    event.title = params[:title]
    event.speaker = params[:speaker]
    event.campus_id = params[:campus_id]
    event.address = params[:address]
    event.save!
    redirect_to '/events'
  end

  def show
    @event = Event.find_by(id: params[:id]) || nil
  end

  def edit
    if !current_user.is_admin
      render_404
    else
      @event = Event.find_by(id: params[:id])
    end
  end

  def update
    event = Event.find_by(id: params[:id])
    # campus = Campus.find_by(campus_id: event.campus_id)
    # campus.events.find_by(id: params[:id]).campus_id
    event.image_url = params[:image_url]
    event.date = params[:date]
    event.title = params[:title]
    event.speaker = params[:speaker]
    event.campus_id = params[:campus_id]
    event.address = params[:address]
    event.save!
    redirect_to event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to '/'
  end

end
