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

School.create(name: "Anderson Secondary School", address: "123 main street", telephone: "61234567",
website: "http://google.com")

School.create(name: "ABC Primary School", address: "321 side street", telephone: "67654321",
website: "http://yahoo.com")

School.create(name: "DEF Junior College", address: "456 aod street", telephone: "66734131",
website: "http://baidu.com")

Ngo.create(name: "Yi Hui Old Folks Home", address: "223 Bukit Batok", telephone: "91777366",
website: "http://hush.sg", description: "Go in Peace")

Ngo.create(name: "Xavier School for the gifted", address: "43 Bukit Pasoh", telephone: "78693124",
website: "http://abc.com", description: "Be special")

Level.create(description: "upper primary")

Level.create(description: "lower primary")

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
