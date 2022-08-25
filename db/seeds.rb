# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding spices..."

10.times do
  JobSeeker.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    user_name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    role: "Job seeker",
    admin_id: 1
  )

end



puts "✅ Done seeding!"