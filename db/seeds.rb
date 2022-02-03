# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database"
User.destroy_all
Lesson.destroy_all
Booking.destroy_all
puts "Database is clean"

puts "Creating 10 users"
10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Lorem.unique.word,
    email: Faker::Internet.email,
    password: Faker::Internet.unique.password
  )
  puts "User #{user.id} is created"
end

puts "Creating 20 lessons"
20.times do
  lesson = Lesson.create(
    title: Faker::Lorem.words(number: 4),
    description: Faker::Lorem.paragraph,
    location: Faker::Nation.capital_city,
    date: Faker::Date.forward(days: 100),
    time: "#{rand(7..21)}h",
    user_id: rand(1..10)
  )
  puts "Lesson #{lesson.id} is created"
end

puts "Done!"

puts "Creating 5 bookingss"
5.times do
  booking = Booking.create(
    user_id: rand(1..10),
    lesson_id: rand(1..20)
  )
  puts "Booking #{booking.id} is created"
end

puts "All done!"
