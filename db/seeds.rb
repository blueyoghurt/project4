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
  user.profile_pic = "765-default-avatar_ygvgb"
end

User.find_or_create_by!(email: ENV["seed_email1"]) do |user|
  user.first_name = 'Teacher'
  user.last_name = 'User'
  user.usertype = 2
  user.password = ENV["seed_password"]
  user.profile_pic = "765-default-avatar_ygvgb"
end

User.find_or_create_by!(email: ENV["seed_email2"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "765-default-avatar_ygvgb"
end

User.find_or_create_by!(email: ENV["seed_email3"]) do |user|
  user.first_name = 'NGO'
  user.last_name = 'User'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.profile_pic = "765-default-avatar_ygvgb"
end

School.find_or_create_by!(name: "Anderson Secondary School") do |school|
  school.name = "Anderson Secondary School"
  school.address = "123 main street"
  school.telephone = "61234567"
  school.website = "http://google.com"
  school.email = "anderson@email.com"
  school.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
end

School.find_or_create_by!(name: "ABC Primary School") do |school|
  school.name = "ABC Primary School"
  school.address = "321 side street"
  school.telephone = "67654321"
  school.website = "http://baidu.com"
  school.email = "abc@email.com"
  school.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
end

School.find_or_create_by!(name: "DEF Junior College") do |school|
  school.name = "DEF Junior College"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
end

NgoCategory.find_or_create_by!(name: "Elderly") do |cat|
  cat.name = "Elderly"
end

NgoCategory.find_or_create_by!(name: "Youth") do |cat|
  cat.name = "Youth"
end

NgoCategory.find_or_create_by!(name: "Wildlife Conservation") do |cat|
  cat.name = "Wildlife Conservation"
end

NgoCategory.find_or_create_by!(name: "Environment") do |cat|
  cat.name = "Environment"
end

Ngo.find_or_create_by!(name: "Yi Hui Old Folks Home") do |ngo|
  ngo.name = "Yi Hui Old Folks Home"
  ngo.address = "223 Bukit Batok"
  ngo.telephone = "91777366"
  ngo.website = "http://hush.sg"
  ngo.description = "Go in Peace"
  ngo.email = "yihui@email.com"
  ngo.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
  ngo.ngo_category_id = NgoCategory.find_by(name: "Elderly").id
end

Ngo.find_or_create_by!(name: "Xavier School for the Gifted") do |ngo|
  ngo.name = "Xavier School for the Gifted"
  ngo.address = "43 Bukit Pasoh"
  ngo.telephone = "78693124"
  ngo.website = "http://abc.com"
  ngo.description = "Be special"
  ngo.email = "xavier@email.com"
  ngo.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
  ngo.ngo_category_id = NgoCategory.find_by(name: "Environment").id
end

NgoUser.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email3"]).id) do |ngouser|
  ngouser.user_id = User.find_by(email: ENV["seed_email3"]).id
  ngouser.ngo_id = Ngo.find_by(name: "Xavier School for the Gifted").id
end

EducationLevel.find_or_create_by!(description: "Primary") do |level|
  level.description = "Primary"
end

EducationLevel.find_or_create_by!(description: "Secondary") do |level|
  level.description = "Secondary"
end

EducationLevel.find_or_create_by!(description: "JC") do |level|
  level.description = "JC"
end

EducationLevel.find_or_create_by!(description: "Poly") do |level|
  level.description = "Poly"
end

EducationLevel.find_or_create_by!(description: "ITE") do |level|
  level.description = "ITE"
end

EducationLevel.find_or_create_by!(description: "Tertiary") do |level|
  level.description = "Tertiary"
end

Level.find_or_create_by!(description: "Primary One") do |level|
  level.description = "Primary One"
  level.education_level_id = 1
end

Level.find_or_create_by!(description: "Primary Two") do |level|
  level.description = "Primary Two"
  level.education_level_id = 1
end

Level.find_or_create_by!(description: "Primary Three") do |level|
  level.description = "Primary Three"
  level.education_level_id = 1
end

Level.find_or_create_by!(description: "Primary Four") do |level|
  level.description = "Primary Four"
  level.education_level_id = 1
end

Level.find_or_create_by!(description: "Primary Five") do |level|
  level.description = "Primary Five"
  level.education_level_id = 1
end

Level.find_or_create_by!(description: "Primary Six") do |level|
  level.description = "Primary Six"
  level.education_level_id = 1
end

Level.find_or_create_by!(description: "Secondary One") do |level|
  level.description = "Secondary One"
  level.education_level_id = 2
end

Level.find_or_create_by!(description: "Secondary Two") do |level|
  level.description = "Secondary Two"
  level.education_level_id = 2
end

Level.find_or_create_by!(description: "Secondary Three") do |level|
  level.description = "Secondary Three"
  level.education_level_id = 2
end

Level.find_or_create_by!(description: "Secondary Four") do |level|
  level.description = "Secondary Four"
  level.education_level_id = 2
end

Level.find_or_create_by!(description: "Secondary Five") do |level|
  level.description = "Secondary Five"
  level.education_level_id = 2
end

Level.find_or_create_by!(description: "JC") do |level|
  level.description = "JC"
  level.education_level_id = 3
end

Level.find_or_create_by!(description: "Poly") do |level|
  level.description = "Poly"
  level.education_level_id = 4
end

Level.find_or_create_by!(description: "ITE") do |level|
  level.description = "ITE"
  level.education_level_id = 5
end

Level.find_or_create_by!(description: "Tertiary") do |level|
  level.description = "Tertiary"
  level.education_level_id = 6
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

Event.find_or_create_by!(name: "Save the Web Developers") do |cat|
  event.name = "Save the Web Developers"
  # event.start_date = ""
  # event.end_date = ""
  # event.start_time = ""
  event.duration = 2
  # event.description = "Save the poor buggers!"
  # event.vacancy = 40
  # event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  # event.school_id = School.find_by(name" "Anderson Secondary School").id
  # event.education_level_id = EducationLevel.find_by("Secondary").id
end
