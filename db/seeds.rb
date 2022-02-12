# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cleaning database

puts "Cleaning up database"
Booking.destroy_all
Lesson.destroy_all
User.destroy_all
puts "Database is clean"

# Users

puts "Creating 2 users"

john = User.create(
  first_name: "John",
  last_name: "Doe",
  username: "johndoe",
  email: "johndoe@lewagon.com",
  password: "123456",
  avatar_url: "https://res.cloudinary.com/dbevdhp4h/image/upload/v1644664585/cwebster_avatar_qvqz9q.jpg"
)
sam = User.create(
  first_name: "Sam",
  last_name: "Smith",
  username: "samsmith",
  email: "samsmith@lewagon.com",
  password: "123456",
  avatar_url: "https://res.cloudinary.com/dbevdhp4h/image/upload/v1644664580/1643305747745_bnkhak.jpg"
)
puts "#{User.count} users have been created"

# Lessons

puts "Creating 2 lessons for user 1"

john_lesson_1 = Lesson.create(
  title: "Stand-up comedy",
  description: Faker::Lorem.paragraph,
  location: Faker::Nation.capital_city,
  difficulty_level: "Beginner",
  user_id: john.id,
  picture_url: "https://res.cloudinary.com/drirexwsz/image/upload/v1644071258/stand-up-comedy-neon-sign_fz0onc.jpg"
)
puts "Lesson #{john_lesson_1.id} is created"

john_lesson_2 = Lesson.create(
  title: "Book restoration",
  description: Faker::Lorem.paragraph,
  location: Faker::Nation.capital_city,
  difficulty_level: "Intermediate",
  user_id: john.id,
  picture_url: "https://res.cloudinary.com/drirexwsz/image/upload/v1644071520/Gian_6_oon9s8.jpg"
)
puts "Lesson #{john_lesson_2.id} is created"

# john_lesson_3 = Lesson.create(
#   title: Faker::Hobby.activity,
#   description: Faker::Lorem.paragraph,
#   location: Faker::Nation.capital_city,
#   difficulty_level: advanced,
#   user_id: john.id,
#   picture_url: "URL"
# )
# puts "Lesson #{john_lesson.id} is created"

puts "Creating 1 lessons for user 2"

sam_lesson_1 = Lesson.create(
  title: "Gaming",
  description: Faker::Lorem.paragraph,
  location: Faker::Nation.capital_city,
  difficulty_level: "Advanced",
  user_id: sam.id,
  picture_url: "https://res.cloudinary.com/drirexwsz/image/upload/v1644071201/acastro_190618_1777_cloud_gaming_0003.0_xcfq9w.jpg"
)
puts "Lesson #{sam_lesson_1.id} is created"

# sam_lesson_2 = Lesson.create(
#   title: Faker::Hobby.activity,
#   description: Faker::Lorem.paragraph,
#   location: Faker::Nation.capital_city,
#   difficulty_level: intermediate,
#   user_id: sam.id,
#   picture_url:"URL"
# )
# puts "Lesson #{sam_lesson.id} is created"

# sam_lesson_3 = Lesson.create(
#   title: Faker::Hobby.activity,
#   description: Faker::Lorem.paragraph,
#   location: Faker::Nation.capital_city,
#   difficulty_level: advanced,
#   user_id: sam.id,
#   picture_url: "URL"
# )
# puts "Lesson #{sam_lesson.id} is created"

puts "All 3 lessons created!"

# Bookings

puts "Creating 2 bookings"

puts "Creating 1 booking for user 1"

john_booking_1 = Booking.create(
    user_id: john.id,
    lesson_id: sam_lesson_1.id,
    date: Faker::Date.forward(days: 100),
    time: rand(7..21)
  )
puts "Booking #{john_booking_1.id} is created"

# john_booking_2 = Booking.create(
#     user_id: john.id,
#     lesson_id: sam_lesson.id,
#     date: Faker::Date.forward(days: 100),
#     time: rand(7..21)
#   )
# puts "Booking #{john_booking.id} is created"

puts "Creating 1 bookings for user 2"

sam_booking_1 = Booking.create(
  user_id: sam.id,
  lesson_id: john_lesson_1.id,
  date: Faker::Date.forward(days: 100),
  time: "#{rand(7..21)}h"
)
puts "Booking #{sam_booking_1.id} is created"

# sam_booking_2 = Booking.create(
#   user_id: sam.id,
#   lesson_id: john_lesson.id,
#   date: Faker::Date.forward(days: 100),
#   time: "#{rand(7..21)}h"
# )
# puts "Booking #{sam_booking.id} is created"

puts "All done!"


puts "#{User.count} users have been created"
puts "#{Lesson.count} lessons have been created"
puts "#{Booking.count} booking have been created"
