class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find_by(id: params[:id]) || nil
  end

  def edit
  end

  def update
    event = Event.find_by(id: params[:id])
    # campus = Campus.find_by(campus_id: event.campus_id)
    # campus.events.find_by(id: params[:id]).campus_id
    event.image_url = params[:image_url]
    event.date = params[:date]
    event.speaker = params[:speaker]
    event.campus_id = params[:campus_id]
    event.address = params[:address]
    event.save!
  end


end
