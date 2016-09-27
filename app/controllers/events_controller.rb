class EventsController < ApplicationController
  before_action :set_event, only: [ :show, :create]

  def index
    @events = Event.all
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event_priv)
    else
      render 'new'
    end
  end

  private

  def set_event
    @event_priv = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description)
  end
end
