# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_taka = User.new
user_taka.id = 1
user_taka.email = 'taka@planna.com'
user_taka.name = 'Taka'
user_taka.password = 'taka'
user_taka.password_confirmation = 'taka'
user_taka.save!

user_mitsuki = User.new
user_mitsuki.id = 2
user_mitsuki.email = 'mitsuki@planna.com'
user_mitsuki.name = 'Mitsuki'
user_mitsuki.password = 'mitsuki'
user_mitsuki.password_confirmation = 'mitsuki'
user_mitsuki.save!

user_satomi = User.new
user_satomi.id = 3
user_satomi.email = 'satomi@planna.com'
user_satomi.name = 'Satomi'
user_satomi.password = 'satomi'
user_satomi.password_confirmation = 'satomi'
user_satomi.save!

user_dai = User.new
user_dai.id = 4
user_dai.email = 'dai@planna.com'
user_dai.name = 'Dai'
user_dai.password = 'dai'
user_dai.password_confirmation = 'dai'
user_dai.save!

Event.create(:id => 1,
             :name => 'Sushi',
             :from => DateTime.strptime("2016/02/03 10:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/03 11:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Event.create(:id => 2,
             :name => 'Ninja Viledge',
             :from => DateTime.strptime("2016/02/03 18:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/03 19:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Event.create(:id => 3,
             :name => 'Kyoto Tower',
             :from => DateTime.strptime("2016/02/04 10:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/04 11:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Event.create(:id => 4,
             :name => 'Nanzenji Temple',
             :from => DateTime.strptime("2016/02/04 14:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/04 15:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Event.create(:id => 5,
             :name => 'Gion',
             :from => DateTime.strptime("2016/02/04 18:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/04 19:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Event.create(:id => 6,
             :name => 'Shimogamo Shrine',
             :from => DateTime.strptime("2016/02/05 10:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/05 11:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Event.create(:id => 7,
             :name => 'Shopping@Kyoto St.',
             :from => DateTime.strptime("2016/02/05 14:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/05 15:00", "%Y/%m/%d %H:%M"),
             :user_id => 1)

Attendance.create(:user_id => 1, :event_id => 1)
Attendance.create(:user_id => 2, :event_id => 1)

Attendance.create(:user_id => 1, :event_id => 2)
Attendance.create(:user_id => 2, :event_id => 2)

Attendance.create(:user_id => 1, :event_id => 3)
Attendance.create(:user_id => 2, :event_id => 3)

Attendance.create(:user_id => 1, :event_id => 4)
Attendance.create(:user_id => 2, :event_id => 4)

Attendance.create(:user_id => 1, :event_id => 5)
Attendance.create(:user_id => 2, :event_id => 5)

Attendance.create(:user_id => 1, :event_id => 6)
Attendance.create(:user_id => 2, :event_id => 6)

Attendance.create(:user_id => 1, :event_id => 7)
Attendance.create(:user_id => 2, :event_id => 7)

Tour.create(:user_id => 1,
            :from => Date.strptime("2016/02/03", "%Y/%m/%d"),
            :to => Date.strptime("2016/02/05", "%Y/%m/%d"),
            :name => 'Kyoto tour!')

Tour.create(:user_id => 2,
            :from => Date.strptime("2016/02/03", "%Y/%m/%d"),
            :to => Date.strptime("2016/02/05", "%Y/%m/%d"),
            :name => 'Japan!')
