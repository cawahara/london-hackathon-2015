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
user_taka.password = 'taka'
user_taka.password_confirmation = 'taka'
user_taka.save!

user_mitsuki = User.new
user_mitsuki.id = 2
user_mitsuki.email = 'mitsuki@planna.com'
user_mitsuki.password = 'mitsuki'
user_mitsuki.password_confirmation = 'mitsuki'
user_mitsuki.save!

user_satomi = User.new
user_satomi.id = 3
user_satomi.email = 'satomi@planna.com'
user_satomi.password = 'satomi'
user_satomi.password_confirmation = 'satomi'
user_satomi.save!

user_dai = User.new
user_dai.id = 4
user_dai.email = 'dai@planna.com'
user_dai.password = 'dai'
user_dai.password_confirmation = 'dai'
user_dai.save!

Event.create(:event_id => 1,
             :name => 'Sushi',
             :from => DateTime.strptime("2016/02/03 10:00", "%Y/%m/%d %H:%M"),
             :to => DateTime.strptime("2016/02/03 11:00", "%Y/%m/%d %H:%M"),
             :created_by => 'taka@planna.com')

UserEvent.create(:user_id => 'taka@planna.com', :event_id => 1)
UserEvent.create(:user_id => 'mitsuki@planna.com', :event_id => 1)
UserEvent.create(:user_id => 'satomi@planna.com', :event_id => 1)

Tour.create(:user_id => 'taka@planna.com',
            :from => Date.strptime("2016/02/03", "%Y/%m/%d"),
            :to => Date.strptime("2016/02/05", "%Y/%m/%d"),
            :name => 'Kyoto tour!')
