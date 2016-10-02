class EventsController < ApplicationController
  before_action :set_event, only: [ :show, :create, :new]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to new_event
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
