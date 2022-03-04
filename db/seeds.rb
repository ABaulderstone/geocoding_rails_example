# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if User.count == 0
  alice = User.create(email: "alice@test.com", password: "password", password_confirmation: "password")
  alice.create_profile(name: "Alice", street: "38 Ward Street", suburb: "North Adelaide", postcode: "5006")
  bob = User.create(email: "bob@test.com", password: "password", password_confirmation: "password")
  bob.create_profile(name: "Bob", street: "13 Hamilton Place", suburb: "Adelaide", postcode: "5000")
  charlie = User.create(email: "charlie@test.com", password: "password", password_confirmation: "password")
  charlie.create_profile(name: "Charlie", street: "392 Spencer Street", suburb: "West Melbourne", postcode: "3003")
  dylan = User.create(email: "dylan@test.com", password: "password", password_confirmation: "password")
  dylan.create_profile(name: "Dylan", street: "223 Abercrombie Street", suburb: "Darlington", postcode: "2008")
end

if Listing.count == 0 
  20.times do |i| 
    Listing.create(user_id: rand(1..5), title: Faker::Book.title, description: Faker::Quote.famous_last_words)
  end 
end