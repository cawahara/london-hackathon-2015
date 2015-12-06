class EventsController < ApplicationController

  def new
    render 'events/new'
  end

  def create
    if params['name1'] != ''
      event = Event.new(:name => params['name1'],
                        :from => DateTime.strptime(params['date1'] + 'T' + params['from1'],
                                                   '%Y-%m-%dT%H:%M'),
                        :to =>   DateTime.strptime(params['date1'] + 'T' + params['to1'],
                                                   '%Y-%m-%dT%H:%M'),
                        :user_id => current_user.id)
      event.save
      attendance = Attendance.new(:user_id => current_user.id, :event_id => event.id)
      attendance.save
    end
    if params['name2'] != ''
      event = Event.new(:name => params['name2'],
                        :from => DateTime.strptime(params['date2'] + 'T' + params['from2'],
                                                   '%Y-%m-%dT%H:%M'),
                        :to =>   DateTime.strptime(params['date2'] + 'T' + params['to2'],
                                                   '%Y-%m-%dT%H:%M'),
                        :user_id => current_user.id)
      event.save
      attendance = Attendance.new(:user_id => current_user.id, :event_id => event.id)
      attendance.save
    end
    if params['name3'] != ''
      event = Event.new(:name => params['name3'],
                        :from => DateTime.strptime(params['date3'] + 'T' + params['from3'],
                                                   '%Y-%m-%dT%H:%M'),
                        :to =>   DateTime.strptime(params['date3'] + 'T' + params['to3'],
                                                   '%Y-%m-%dT%H:%M'),
                        :user_id => current_user.id)
      event.save
      attendance = Attendance.new(:user_id => current_user.id, :event_id => event.id)
      attendance.save
    end
    if params['name4'] != ''
      event = Event.new(:name => params['name4'],
                        :from => DateTime.strptime(params['date4'] + 'T' + params['from4'],
                                                   '%Y-%m-%dT%H:%M'),
                        :to =>   DateTime.strptime(params['date4'] + 'T' + params['to4'],
                                                   '%Y-%m-%dT%H:%M'),
                        :user_id => current_user.id)
      event.save
      attendance = Attendance.new(:user_id => current_user.id, :event_id => event.id)
      attendance.save
    end

    redirect_to '/', notice: 'Created a new event.'

  end

end
