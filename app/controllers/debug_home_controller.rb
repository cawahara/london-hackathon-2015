class DebugHomeController < ApplicationController
  def index
    render text: 'Hello'
  end

  def view
    @msg = 'Hello?'
    render 'debug_home/view'
  end
end
