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

School.find_or_create_by!(name: "Anderson Secondary School") do |school|
  school.name = "Anderson Secondary School"
  school.address = "123 main street"
  school.telephone = "61234567"
  school.website = "http://google.com"
end

School.find_or_create_by!(name: "ABC Primary School") do |school|
  school.name = "ABC Primary School"
  school.address = "321 side street"
  school.telephone = "67654321"
  school.website = "http://baidu.com"
end

School.find_or_create_by!(name: "DEF Junior College") do |school|
  school.name = "DEF Junior College"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
end

Ngo.find_or_create_by!(name: "Yi Hui Old Folks Home") do |ngo|
  ngo.name = "Yi Hui Old Folks Home"
  ngo.address = "223 Bukit Batok"
  ngo.telephone = "91777366"
  ngo.website = "http://hush.sg"
  ngo.description = "Go in Peace"
end

Ngo.find_or_create_by!(name: "avier School for the Gifted") do |ngo|
  ngo.name = "Xavier School for the Gifted"
  ngo.address = "43 Bukit Pasoh"
  ngo.telephone = "78693124"
  ngo.website = "http://abc.com"
  ngo.description = "Be special"
end

Level.find_or_create_by!(description: "upper primary") do |level|
  level.description = "upper primary"
end

Level.find_or_create_by!(description: "lower primary") do |level|
  level.description = "lower primary"
end

SchoolUser.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email1"]).id) do |schooluser|
  schooluser.school_id = School.find_by(id: 1).id
  schooluser.user_id = User.find_by(email: ENV["seed_email1"]).id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email2"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email2"]).id
  student.level_id = 1
  student.school_id = 1
end

NgoUser.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email3"]).id) do |ngouser|
  ngouser.user_id = User.find_by(email: ENV["seed_email3"]).id
  ngouser.ngo_id = 1
end
