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
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email1"]) do |user|
  user.first_name = 'Teacher'
  user.last_name = 'User One'
  user.usertype = 2
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email2"]) do |user|
  user.first_name = 'Teacher'
  user.last_name = 'User Two'
  user.usertype = 2
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email3"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User One'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email4"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Two'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email5"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Three'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email6"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Four'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email7"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Five'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email8"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Six'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email9"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Seven'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email10"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Eight'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email11"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Nine'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email12"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Ten'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email13"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Eleven'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email14"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Twelve'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email15"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Thirteen'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email16"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Fourteen'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email17"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Fifteen'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email18"]) do |user|
  user.first_name = 'NGO'
  user.last_name = 'User One'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

User.find_or_create_by!(email: ENV["seed_email19"]) do |user|
  user.first_name = 'NGO'
  user.last_name = 'User Two'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.profile_pic = "b0cakqqv3fcvydkdixae"
end

School.find_or_create_by!(name: "ABC Primary School") do |school|
  school.name = "ABC Primary School"
  school.address = "321 side street"
  school.telephone = "67654321"
  school.website = "http://baidu.com"
  school.email = "abc@email.com"
  school.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
end

School.find_or_create_by!(name: "Anderson Secondary School") do |school|
  school.name = "Anderson Secondary School"
  school.address = "123 main street"
  school.telephone = "61234567"
  school.website = "http://google.com"
  school.email = "anderson@email.com"
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

School.find_or_create_by!(name: "GHI Polytechnic") do |school|
  school.name = "GHI Polytechnic"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
end

School.find_or_create_by!(name: "ITE Singapore") do |school|
  school.name = "ITE Singapore"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "https://avatars3.githubusercontent.com/u/5298861?v=3&s=466"
end

School.find_or_create_by!(name: "SUTD") do |school|
  school.name = "SUTD"
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

NgoCategory.find_or_create_by!(name: "Special Needs") do |cat|
  cat.name = "Special Needs"
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
  ngo.ngo_category_id = NgoCategory.find_by(name: "Special Needs").id
end

NgoUser.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email18"]).id) do |ngouser|
  ngouser.user_id = User.find_by(email: ENV["seed_email18"]).id
  ngouser.ngo_id = Ngo.find_by(name: "Xavier School for the Gifted").id
end

NgoUser.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email19"]).id) do |ngouser|
  ngouser.user_id = User.find_by(email: ENV["seed_email19"]).id
  ngouser.ngo_id = Ngo.find_by(name: "Yi Hui Old Folks Home").id
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
  schooluser.school_id = School.find_by(name: "ABC Primary School").id
  schooluser.user_id = User.find_by(email: ENV["seed_email1"]).id
end

SchoolUser.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email2"]).id) do |schooluser|
  schooluser.school_id = School.find_by(name: "Anderson Secondary School").id
  schooluser.user_id = User.find_by(email: ENV["seed_email2"]).id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email3"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email3"]).id
  student.level_id = Level.find_by(description: "Primary One").id
  student.school_id = School.find_by(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email4"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email4"]).id
  student.level_id = Level.find_by(description: "Primary Two").id
  student.school_id = School.find_by(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email5"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email5"]).id
  student.level_id = Level.find_by(description: "Primary Three").id
  student.school_id = School.find_by(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email6"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email6"]).id
  student.level_id = Level.find_by(description: "Primary Four").id
  student.school_id = School.find_by(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email7"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email7"]).id
  student.level_id = Level.find_by(description: "Primary Five").id
  student.school_id = School.find_by(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email8"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email8"]).id
  student.level_id = Level.find_by(description: "Primary Six").id
  student.school_id = School.find_by(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email9"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email9"]).id
  student.level_id = Level.find_by(description: "Secondary One").id
  student.school_id = School.find_by(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email10"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email10"]).id
  student.level_id = Level.find_by(description: "Secondary Two").id
  student.school_id = School.find_by(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email11"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email11"]).id
  student.level_id = Level.find_by(description: "Secondary Three").id
  student.school_id = School.find_by(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email12"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email12"]).id
  student.level_id = Level.find_by(description: "Secondary Four").id
  student.school_id = School.find_by(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email13"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email13"]).id
  student.level_id = Level.find_by(description: "Secondary Five").id
  student.school_id = School.find_by(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email14"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email14"]).id
  student.level_id = Level.find_by(description: "JC").id
  student.school_id = School.find_by(name: "DEF Junior College").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email15"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email15"]).id
  student.level_id = Level.find_by(description: "Poly").id
  student.school_id = School.find_by(name: "GHI Polytechnic").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email16"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email16"]).id
  student.level_id = Level.find_by(description: "ITE").id
  student.school_id = School.find_by(name: "ITE Singapore").id
end

Student.find_or_create_by!(user_id: User.find_by(email: ENV["seed_email17"]).id) do |student|
  student.user_id = User.find_by(email: ENV["seed_email17"]).id
  student.level_id = Level.find_by(description: "Tertiary").id
  student.school_id = School.find_by(name: "SUTD").id
end

Event.find_or_create_by!(name: "Save Eugene") do |event|
  event.name = "Save Eugene"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor buggers!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by(description: "Primary").id
end

Event.find_or_create_by!(name: "Save Celine") do |event|
  event.name = "Save Celine"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor buggers!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by(description: "Primary").id
end

Event.find_or_create_by!(name: "Save John") do |event|
  event.name = "Save John"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor buggers!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by(description: "Primary").id
end

Event.find_or_create_by!(name: "Save Yvonne") do |event|
  event.name = "Save Yvonne"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor buggers!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by(description: "Primary").id
end

Event.find_or_create_by!(name: "Conserve the beer day") do |event|
  event.name = "Conserve the beer day"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by(description: "Secondary").id
end

Event.find_or_create_by!(name: "Conserve the chocolate day") do |event|
  event.name = "Conserve the chocolate day"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by(description: "Secondary").id
end

Event.find_or_create_by!(name: "Conserve the potato chips day") do |event|
  event.name = "Conserve the potato chips day"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by(description: "Secondary").id
end

Event.find_or_create_by!(name: "Conserve the french fries day") do |event|
  event.name = "CConserve the french fries day"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by(description: "Secondary").id
end

Task.find_or_create_by!(id: 1) do |task|
  task.description = "Talk to an elderly person and describe your experience"
  task.level_id = Level.find_by(id: 5).id
  task.event_id = Event.find_by(id: 1).id
end

Card.find_or_create_by!(id: 1) do |card|
  card.approval = false
  card.picture = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  card.description = "I saw the poor bald souls and i was glad I helped them"
  card.student_id = Student.find_by(user_id: User.find_by(email: ENV["seed_email3"]).id).id
  card.event_id = Event.find_by(id: 2).id
  card.task_id = Task.find_by(id: 1).id
end
