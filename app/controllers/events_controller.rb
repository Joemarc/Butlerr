class EventsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :create]

  def index
    @events = Event.all
  end

  def show
  end

  def create
    @event = Event.new
    # if @event.save
    #   redirect_to event_path(@event)
    # else
    #   render 'new'
    # end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

end
