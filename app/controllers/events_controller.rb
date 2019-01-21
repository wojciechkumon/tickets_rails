class EventsController < ApplicationController

  def show
  end

  def index
    @events = Event.all
  end

  def new
  end

  def create
  end
end
