class InviteController < ApplicationController
  def invite
    attendance = Attendance.new(:event_id => 8, :user_id => 3)
    attendance.save
    attendance = Attendance.new(:event_id => 9, :user_id => 3)
    attendance.save
    attendance = Attendance.new(:user_id => 3, :event_id => 10)
    attendance.save
    attendance = Attendance.new(:user_id => 3, :event_id => 11)
    attendance.save

    redirect_to '/', notice: 'Created a new event.'
  end
end
