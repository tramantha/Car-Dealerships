# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# db/seeds.rb

#Dealerships
4.times do |i|
  Dealership.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)

end

#Salesmen
10.times do |i|
	Salesman.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email)

end

#Cars
200.times do |i|
	Car.create(model: Faker::Vehicle.manufacture, year: Faker::Date.between(10.years.ago, Date.today), condition: "New", location_address: Faker::Address.street_address, location_city: Faker::Address.city, location_state: Faker::Address.state, location_zip: Faker::Address.zip, price: 20_000, status: "Available", sold_by: "NONE")

end

#Prospects
100.times do |i|
	Prospect.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, mobile_phone_number: Faker::PhoneNumber.cell_phone)

end

