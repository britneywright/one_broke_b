class EventsController < ApplicationController
  def index 
    @events = Event.this_week
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find_by(params[:event_params])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_url
    else
      redirect_to action: "new"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_url
    else
      redirect_to action: "edit"
    end
  end

  def destroy 
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_url
  end

  private 
  
  def event_params
    params.require(:event).permit(:name, :amount)
  end
end
