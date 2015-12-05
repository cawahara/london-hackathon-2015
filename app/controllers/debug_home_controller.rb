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

    @events = UserEvent.where(user_id: @user)

    render 'debug_home/view'
  end

end
