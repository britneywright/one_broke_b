class EventsController < ApplicationController
  def index 
    @events = Event.this_week
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_url
    else
      redirect_to action: "new"
    end
  end

  private 
  
  def event_params
    params.require(:event).permit(:name, :amount)
  end
end
