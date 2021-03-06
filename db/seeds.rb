# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "DELETING USERS..."
User.destroy_all
puts "GENERATING NEW USERS"
100.times do |t|
  User.create(name: Faker::Games::ElderScrolls.name, email: Faker::Internet.email )
end
puts "END"