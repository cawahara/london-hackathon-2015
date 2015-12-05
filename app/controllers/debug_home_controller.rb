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

    @events = current_user.events

    @tours = current_user.tours

    render 'debug_home/view'
  end

end
