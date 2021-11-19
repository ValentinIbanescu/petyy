# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

puts "destroying bookings"
Booking.destroy_all
puts "destroying pets"
Pet.destroy_all
puts "destroying users"
User.destroy_all

User.create!(
    password: "000000",
    email: "akiho@lewagon.com",
    first_name: "Akiho",
    last_name: "Hamamoto",
    address:"Berlin 1")

User.create!(
    password: "000000",
    email: "yian@lewagon.com",
    first_name: "Yi-An",
    last_name: "Ko",
    address:"Berlin 1")

User.create!(
    password: "000000",
    email: "maruan@lewagon.com",
    first_name: "Maruan",
    last_name: "Paschen",
    address:"Berlin 1")

User.create!(
    password: "000000",
    email: "valentin@lewagon.com",
    first_name: "Valentin",
    last_name: "Miller",
    address:"Berlin 1")

user_id = rand(User.first.id..User.last.id)

puts "creating pets"
12.times do
  Pet.create(
    user_id: user_id,
    name: Faker::Name.first_name,
    age: rand(0..100),
    category: Faker::Creature::Animal.name.capitalize,
    diet: Faker::Food.dish,
    medical_situation: Faker::Emotion.noun
  )
end
puts "Pets created"


pets = Pet.all
pets.each do |pet|
  file = URI.open('https://picsum.photos/id/237/600/400')
  pet.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  file.close
end

puts "#{Pet.count} pets were created successfully."

pet_id = rand(Pet.first.id..Pet.last.id)


puts "creating bookings"
5.times do
  Booking.create(
    user_id: user_id,
    pet_id: pet_id,
    start_date: '20210912102511',
    end_date: '20210919102511'
  )
end
puts "#{Booking.count} bookings were created successfully."

# booking_id = rand(Booking.first.id..Booking.last.id)

# puts "creating reviews"
# Review.create(
#   booking_id: booking_id,
#   content: "great!"
# )
