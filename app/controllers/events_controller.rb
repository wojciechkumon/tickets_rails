class EventsController < ApplicationController
  before_action :check_logged_in, only: [:new, :create]

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event_params = params.require(:event).permit(:artist, :description, :city, :price_low, :price_high, :event_date)
    @event = Event.new(event_params)
    if @event.save
      redirect_to "/events/#{@event.id}", notice: 'Event was successfully created.'
    else
      render 'new'
    end
  end

  private

  def check_logged_in
    authenticate_or_request_with_http_basic('Ads') do |username, password|
      username == 'admin' && password == 'admin'
    end
  end
end
