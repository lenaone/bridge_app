class EventsController < ApplicationController
  def index
  end

  def show
    @event =  Event.find_by(id: params[:id]) || nil
  end
end
