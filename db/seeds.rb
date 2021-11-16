# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying users"
User.destroy_all

User.create!(
    password: "123457682192",
    email: "akiho@lewagon.com",
    first_name: "Akiho",
    last_name: "Hamamoto",
    address:"Berlin 1")

User.create!(
    password: "123457682192",
    email: "yian@lewagon.com",
    first_name: "Yi-An",
    last_name: "Ko",
    address:"Berlin 1")

User.create!(
    password: "123457682192",
    email: "maruan@lewagon.com",
    first_name: "Maruan",
    last_name: "Paschen",
    address:"Berlin 1")

User.create!(
    password: "123457682192",
    email: "valentin@lewagon.com",
    first_name: "Valentin",
    last_name: "Miller",
    address:"Berlin 1")

user_id = rand(User.first.id..User.last.id)

puts "destroying pets"
Pet.destroy_all
puts "creating pets"
5.times do
  Pet.create(
    user_id: user_id,
    name: Faker::Name.first_name,
    age: rand(0..100),
    category: ["cat", "dog", "corckadile", "snake", "tiger", "gorilla"].sample,
    diet: Faker::Food.dish
  )
end
puts "#{Pet.count} pets were created successfully."
