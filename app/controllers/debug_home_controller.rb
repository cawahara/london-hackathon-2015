class DebugHomeController < ApplicationController
  def index
    render text: 'Hello'
  end

  def view
    @msg = 'Hello?'
    if user_signed_in?
      @user = current_user.email
    else
      @user = 'None'
    end

    @user_events = UserEvent.where(user_id: @user)

    event_ids = []
    @user_events.each do |user_event|
      event_ids << user_event.event_id
    end

    @events = Event.where(event_id: event_ids)

    @tours = Tour.where(user_id: @user)

    render 'debug_home/view'
  end

end
