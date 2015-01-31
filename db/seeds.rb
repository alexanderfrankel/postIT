# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 locations = %w(A1 A2 A3 A4 A5 A6 B1 B2 B3 B4 B5 B6 C1 C2 C3 C4 C5 C6 D1 D2 D3 D4 D5 D6 E1 E2 E3 E4 E5 F6 F1 F2 F3 F4 F5 F6)

 36.times {
 	Computer.create(location: locations.pop, status: 0)
 }

 3.times {
 	coach = Coach.create(email: Faker::Internet.email, password: 'password')
 	3.times {
 		coach.requests << request_arr.pop
 	}
 }
