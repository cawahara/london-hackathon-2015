class HomeController < ApplicationController

  def index
    raw_events = current_user.events

    @events = {}
    raw_events.each do |raw_event|
      unless @events.has_key?(raw_event.from.to_date)
        @events[raw_event.from.to_date] = []
      end
      @events[raw_event.from.to_date] << raw_event
    end

    @tours = current_user.tours

    render 'home/index'
  end

end
