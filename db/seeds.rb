# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "🌱 Seeding data..."


Admin.create!(
    first_name: "kate", 
    last_name: "sam", 
    email: "kate@gmail.com",
    role: "admin",
    password: "kate123456"
)

10.times do
Employer.create!(
    user_name: Faker::Name.unique.first_name,
    email: Faker::Internet.free_email[0..14],
    phone_number: Faker::PhoneNumber.phone_number,
    role: "Employer",
    subscription: false,
    company_name: Faker::Company.name[0..10],
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    password: "ari123456",
    admin_id: 1
)
end

10.times do
  JobSeeker.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    user_name: Faker::Name.unique.name,
    email: Faker::Internet.free_email[0..14],
    phone_number: Faker::PhoneNumber.phone_number,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    role: "Job seeker",
    admin_id: 1
    )

end

puts "Done seeding!"