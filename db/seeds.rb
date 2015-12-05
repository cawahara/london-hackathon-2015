# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserEvent.create(:user_id => 'bar@foo.jp', :event_id => 12)
UserEvent.create(:user_id => 'bar@foo.jp', :event_id => 14)
UserEvent.create(:user_id => 'hoge@foo.jp', :event_id => 13)
UserEvent.create(:user_id => 'hoge@foo.jp', :event_id => 14)
