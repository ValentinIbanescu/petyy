# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.new()

puts "destroying users"
User.destroy_all
puts "creating users"
5.times do
  User.create(
    password: Faker::Internet.password,
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address
  )
end
puts "#{User.count} users were created successfully."

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
