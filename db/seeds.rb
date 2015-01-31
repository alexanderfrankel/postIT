# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 locations = %w(A3 A4 A5 A6 A8 A9 A1 A2 B4 B3 B2 B1 B5 B6 B7 B8 B9 C1 C2 C3 C4)
 statuses = %w(1 2 3)
 topics = %w(heroku activerecord js angular meteor bootstrap databases grammar cats)
request_arr = []
 15.times {
 	r = Request.create(student: Faker::Name.name, location: locations.pop, status: statuses.sample, tag: topics.sample)
 	request_arr << r
 }

 3.times {
 	coach = Coach.create(email: Faker::Internet.email, password: 'password')
 	3.times {
 		coach.requests << request_arr.pop
 	}
 }
