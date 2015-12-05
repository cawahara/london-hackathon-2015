class DebugHomeController < ApplicationController

  def view
    @events = current_user.events
    @tours = current_user.tours
    render 'debug_home/view'
  end

end
