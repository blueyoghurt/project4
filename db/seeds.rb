# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by!(email: ENV["seed_email"]) do |user|
  user.first_name = 'Admin'
  user.last_name = 'User'
  user.usertype = 1
  user.password = ENV["seed_password"]
end

User.find_or_create_by!(email: ENV["seed_email1"]) do |user|
  user.first_name = 'Teacher'
  user.last_name = 'User'
  user.usertype = 2
  user.password = ENV["seed_password"]
end

User.find_or_create_by!(email: ENV["seed_email2"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User'
  user.usertype = 3
  user.password = ENV["seed_password"]
end

User.find_or_create_by!(email: ENV["seed_email3"]) do |user|
  user.first_name = 'NGO'
  user.last_name = 'User'
  user.usertype = 4
  user.password = ENV["seed_password"]
end
