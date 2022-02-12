# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database"
Booking.destroy_all
Lesson.destroy_all
User.destroy_all
puts "Database is clean"

puts "Creating 2 users"
john = User.create(
  first_name: "John",
  last_name: "Doe",
  username: "johndoe",
  email: "johndoe@lewagon.com",
  password: "123456"
)
sam = User.create(
  first_name: "Sam",
  last_name: "Smith",
  username: "samsmith",
  email: "samsmith@lewagon.com",
  password: "123456"
)
puts "#{User.count} users have been created"
puts "Creating 5 lessons for each user"

5.times do

  john_lesson = Lesson.create(
    title: Faker::Hobby.activity,
    description: Faker::Lorem.paragraph,
    location: Faker::Nation.capital_city,
    user_id: john.id
  )
  puts "Lesson #{john_lesson.id} is created"

  sam_lesson = Lesson.create(
    title: Faker::Hobby.activity,
    description: Faker::Lorem.paragraph,
    location: Faker::Nation.capital_city,
    user_id: sam.id
  )
  puts "Lesson #{sam_lesson.id} is created"
  puts "Done!"

  puts "Creating a booking"

  john_booking = Booking.create!(
    user_id: john.id,
    lesson_id: sam_lesson.id,
    date: Faker::Date.forward(days: 100),
    time: Time.now
  )
  puts "Booking #{john_booking.id} is created"

  sam_booking = Booking.create!(
    user_id: sam.id,
    lesson_id: john_lesson.id,
    date: Faker::Date.forward(days: 100),
    time: Time.now
  )
  puts "Booking #{sam_booking.id} is created"

  puts "All done!"
end

puts "#{User.count} users have been created"
puts "#{Lesson.count} lessons have been created"
puts "#{Booking.count} booking have been created"
