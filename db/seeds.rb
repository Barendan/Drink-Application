# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(
	first_name: 'Daniel', 
	last_name: 'Barenboim',
	driver_license: '',
	license_url: 'image_url', 
	address: '1077 se 6th ave, Dania Beach, Fl 33004',
	phone: '305-414-9776',
	birthday: 1992-04-20,
	driver: false,
	vip: true,
	verified: true,
	)

user2 = User.create(
	first_name: 'Morgan', 
	last_name: 'Freeman',
	driver_license: 'B651-169-92-140-0',
	address: '350 S Miami Ave apt 3402, Miami, Fl 33130',
	phone: '954 554 9364',
	birthday: 1937-06-01,
	driver: true,
	vip: false,
	verified: true,
	)

user3 = User.create(
	first_name: 'Elon', 
	last_name: 'Musk',
	driver_license: '',
	license_url: 'image_url',
	address: '120 SW 8th St, Miami, FL 33130',
	phone: '305-718-1446',
	birthday: 1971-06-28,
	driver: false,
	vip: true,
	verified: true,
	)



