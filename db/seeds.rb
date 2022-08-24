# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Admin.create!(first_name: 'cate', last_name: 'vuthi', email: 'v@gmail.com', role: 'admin', password: '1234567')

# JobSeeker.create!(first_name: '1', last_name: '1l', email: '1@gmail.com', role: 'jobseeker', password: '1234567',
#                  admin_id: 1)
JobSeeker.create!(user_name: '2', first_name: '2', last_name: '2l', email: '2@gmail.com', role: 'jobseeker', password: '1234567',
                  admin_id: 1)
JobSeeker.create!(user_name: '3', first_name: '3', last_name: '3l', email: '3@gmail.com', role: 'jobseeker', password: '1234567',
                  admin_id: 1)
