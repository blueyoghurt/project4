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
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email1"]) do |user|
  user.first_name = 'Teacher'
  user.last_name = 'User One'
  user.usertype = 2
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email2"]) do |user|
  user.first_name = 'Teacher'
  user.last_name = 'User Two'
  user.usertype = 2
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email3"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User One'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email4"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Two'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email5"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Three'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email6"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Four'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email7"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Five'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email8"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Six'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email9"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Seven'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email10"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Eight'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email11"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Nine'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email12"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Ten'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email13"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Eleven'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email14"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Twelve'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email15"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Thirteen'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email16"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Fourteen'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email17"]) do |user|
  user.first_name = 'Student'
  user.last_name = 'User Fifteen'
  user.usertype = 3
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/hglnxhj4zbuahmppz0px"
end

User.find_or_create_by!(email: ENV["seed_email18"]) do |user|
  user.first_name = 'NGO'
  user.last_name = 'User One'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.gender = 1
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

User.find_or_create_by!(email: ENV["seed_email19"]) do |user|
  user.first_name = 'NGO'
  user.last_name = 'User Two'
  user.usertype = 4
  user.password = ENV["seed_password"]
  user.gender = 2
  user.profile_pic = "user/profile/cbvhfnluijup9kxbqirv"
end

EducationLevel.find_or_create_by!(description: "Primary") do |level|
  level.description = "Primary"
end

EducationLevel.find_or_create_by!(description: "Secondary") do |level|
  level.description = "Secondary"
end

EducationLevel.find_or_create_by!(description: "Junior College") do |level|
  level.description = "Junior College"
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

School.find_or_create_by!(name: "ABC Primary School") do |school|
  school.name = "ABC Primary School"
  school.address = "321 side street"
  school.telephone = "67654321"
  school.website = "http://baidu.com"
  school.email = "abc@email.com"
  school.logo = "school/logo/dbuttkbenhmwgscgmoqx"
  school.education_level_id = 1
end

School.find_or_create_by!(name: "Anderson Secondary School") do |school|
  school.name = "Anderson Secondary School"
  school.address = "123 main street"
  school.telephone = "61234567"
  school.website = "http://google.com"
  school.email = "anderson@email.com"
  school.logo = "school/logo/dbuttkbenhmwgscgmoqx"
  school.education_level_id = 2
end

School.find_or_create_by!(name: "DEF Junior College") do |school|
  school.name = "DEF Junior College"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "school/logo/dbuttkbenhmwgscgmoqx"
  school.education_level_id = 3
end

School.find_or_create_by!(name: "GHI Polytechnic") do |school|
  school.name = "GHI Polytechnic"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "school/logo/dbuttkbenhmwgscgmoqx"
  school.education_level_id = 4
end

School.find_or_create_by!(name: "ITE Singapore") do |school|
  school.name = "ITE Singapore"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "school/logo/dbuttkbenhmwgscgmoqx"
  school.education_level_id = 5
end

School.find_or_create_by!(name: "SUTD") do |school|
  school.name = "SUTD"
  school.address = "456 aod street"
  school.telephone = "66734131"
  school.website = "http://baidu.com"
  school.email = "def@email.com"
  school.logo = "school/logo/dbuttkbenhmwgscgmoqx"
  school.education_level_id = 6
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
  ngo.logo = "ngo/logo/ppwiimshbmqtneeliwrz"
  ngo.ngo_category_id = NgoCategory.find_by!(name: "Elderly").id
end

Ngo.find_or_create_by!(name: "Xavier School for the Gifted") do |ngo|
  ngo.name = "Xavier School for the Gifted"
  ngo.address = "43 Bukit Pasoh"
  ngo.telephone = "78693124"
  ngo.website = "http://abc.com"
  ngo.description = "Be special"
  ngo.email = "xavier@email.com"
  ngo.logo = "ngo/logo/ppwiimshbmqtneeliwrz"
  ngo.ngo_category_id = NgoCategory.find_by!(name: "Special Needs").id
end

NgoUser.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email18"]).id) do |ngouser|
  ngouser.user_id = User.find_by!(email: ENV["seed_email18"]).id
  ngouser.ngo_id = Ngo.find_by!(name: "Xavier School for the Gifted").id
end

NgoUser.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email19"]).id) do |ngouser|
  ngouser.user_id = User.find_by!(email: ENV["seed_email19"]).id
  ngouser.ngo_id = Ngo.find_by!(name: "Yi Hui Old Folks Home").id
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

Level.find_or_create_by!(description: "Junior College") do |level|
  level.description = "Junior College"
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

SchoolUser.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email1"]).id) do |schooluser|
  schooluser.school_id = School.find_by!(name: "ABC Primary School").id
  schooluser.user_id = User.find_by!(email: ENV["seed_email1"]).id
end

SchoolUser.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email2"]).id) do |schooluser|
  schooluser.school_id = School.find_by!(name: "Anderson Secondary School").id
  schooluser.user_id = User.find_by!(email: ENV["seed_email2"]).id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email3"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email3"]).id
  student.level_id = Level.find_by!(description: "Primary One").id
  student.school_id = School.find_by!(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email4"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email4"]).id
  student.level_id = Level.find_by!(description: "Primary Two").id
  student.school_id = School.find_by!(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email5"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email5"]).id
  student.level_id = Level.find_by!(description: "Primary Three").id
  student.school_id = School.find_by!(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email6"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email6"]).id
  student.level_id = Level.find_by!(description: "Primary Four").id
  student.school_id = School.find_by!(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email7"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email7"]).id
  student.level_id = Level.find_by!(description: "Primary Five").id
  student.school_id = School.find_by!(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email8"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email8"]).id
  student.level_id = Level.find_by!(description: "Primary Six").id
  student.school_id = School.find_by!(name: "ABC Primary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email9"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email9"]).id
  student.level_id = Level.find_by!(description: "Secondary One").id
  student.school_id = School.find_by!(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email10"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email10"]).id
  student.level_id = Level.find_by!(description: "Secondary Two").id
  student.school_id = School.find_by!(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email11"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email11"]).id
  student.level_id = Level.find_by!(description: "Secondary Three").id
  student.school_id = School.find_by!(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email12"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email12"]).id
  student.level_id = Level.find_by!(description: "Secondary Four").id
  student.school_id = School.find_by!(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email13"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email13"]).id
  student.level_id = Level.find_by!(description: "Secondary Five").id
  student.school_id = School.find_by!(name: "Anderson Secondary School").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email14"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email14"]).id
  student.level_id = Level.find_by!(description: "Junior College").id
  student.school_id = School.find_by!(name: "DEF Junior College").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email15"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email15"]).id
  student.level_id = Level.find_by!(description: "Poly").id
  student.school_id = School.find_by!(name: "GHI Polytechnic").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email16"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email16"]).id
  student.level_id = Level.find_by!(description: "ITE").id
  student.school_id = School.find_by!(name: "ITE Singapore").id
end

Student.find_or_create_by!(user_id: User.find_by!(email: ENV["seed_email17"]).id) do |student|
  student.user_id = User.find_by!(email: ENV["seed_email17"]).id
  student.level_id = Level.find_by!(description: "Tertiary").id
  student.school_id = School.find_by!(name: "SUTD").id
end

Event.find_or_create_by!(name: "Save Old Folk Eugene") do |event|
  event.name = "Save Old Folk Eugene"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor bugger!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Primary").id
  event.ngo_id = 1
  event.status = 0
end

Event.find_or_create_by!(name: "Save Wei Ying") do |event|
  event.name = "Save Wei Ying"
  event.start_date = "2016-11-01"
  event.end_date = "2016-11-01"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor bugger!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Primary").id
  event.ngo_id = 1
  event.status = 0
end

Event.find_or_create_by!(name: "Save Wei Ying") do |event|
  event.name = "Save Wei Ying"
  event.start_date = "2016-11-05"
  event.end_date = "2016-11-05"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor bugger!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Primary").id
  event.ngo_id = 1
  event.status = 0
end

Event.find_or_create_by!(name: "Save Celine The Kid") do |event|
  event.name = "Save Celine The Kid"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor bugger!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Primary").id
  event.ngo_id = 1
  event.status = 0
end

Event.find_or_create_by!(name: "Save John") do |event|
  event.name = "Save John"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor bugger!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Primary").id
  event.ngo_id = 2
  event.status = 0
end

Event.find_or_create_by!(name: "Save Yvonne") do |event|
  event.name = "Save Yvonne"
  event.start_date = "2016-11-04"
  event.end_date = "2016-11-04"
  event.start_time = "17:00:00"
  event.duration = 8.0
  event.description = "Save the poor bugger!"
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "ABC Primary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Primary").id
  event.ngo_id = 2
  event.status = 0
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
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
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
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
end

Event.find_or_create_by!(name: "Conserve the big mac day") do |event|
  event.name = "Conserve the big mac day"
  event.start_date = "2016-10-11"
  event.end_date = "2016-10-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
end

Event.find_or_create_by!(name: "Conserve the bak kut teh day") do |event|
  event.name = "Conserve the bak kut teh day"
  event.start_date = "2015-11-11"
  event.end_date = "2015-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
end

Event.find_or_create_by!(name: "Conserve the salad day") do |event|
  event.name = "Conserve the salad day"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
end

Event.find_or_create_by!(name: "Adopt a starving developer") do |event|
  event.name = "Adopt a starving developer"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
end

Event.find_or_create_by!(name: "Adopt an ugly developer") do |event|
  event.name = "Adopt an ugly developer"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 2
  event.status = 0
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
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 1
  event.status = 0
end

Event.find_or_create_by!(name: "Conserve the french fries day") do |event|
  event.name = "Conserve the french fries day"
  event.start_date = "2016-11-11"
  event.end_date = "2016-11-11"
  event.start_time = "17:00:00"
  event.duration = 4.0
  event.description = "Save water, drink beer."
  event.vacancy = 18
  event.image = "http://qixelsworld.com/sites/default/files/Youtube-Logo-200_0.png"
  event.school_id = School.find_by!(name: "Anderson Secondary School").id
  event.education_level_id = EducationLevel.find_by!(description: "Secondary").id
  event.ngo_id = 1
  event.status = 0
end

Template.create(event_id: Event.find_by!(id: 1).id, level_id: Level.find_by!(id: 3).id)
Template.create(event_id: Event.find_by!(id: 1).id, level_id: Level.find_by!(id: 4).id)
Template.create(event_id: Event.find_by!(id: 1).id, level_id: Level.find_by!(id: 5).id)
Template.create(event_id: Event.find_by!(id: 1).id, level_id: Level.find_by!(id: 6).id)
Template.create(event_id: Event.find_by!(id: 2).id, level_id: Level.find_by!(id: 3).id)
Template.create(event_id: Event.find_by!(id: 2).id, level_id: Level.find_by!(id: 4).id)
Template.create(event_id: Event.find_by!(id: 2).id, level_id: Level.find_by!(id: 5).id)
Template.create(event_id: Event.find_by!(id: 2).id, level_id: Level.find_by!(id: 6).id)
Template.create(event_id: Event.find_by!(id: 3).id, level_id: Level.find_by!(id: 3).id)
Template.create(event_id: Event.find_by!(id: 3).id, level_id: Level.find_by!(id: 4).id)
Template.create(event_id: Event.find_by!(id: 3).id, level_id: Level.find_by!(id: 5).id)
Template.create(event_id: Event.find_by!(id: 3).id, level_id: Level.find_by!(id: 6).id)
Template.create(event_id: Event.find_by!(id: 4).id, level_id: Level.find_by!(id: 3).id)
Template.create(event_id: Event.find_by!(id: 4).id, level_id: Level.find_by!(id: 4).id)
Template.create(event_id: Event.find_by!(id: 4).id, level_id: Level.find_by!(id: 5).id)
Template.create(event_id: Event.find_by!(id: 4).id, level_id: Level.find_by!(id: 6).id)
Template.create(event_id: Event.find_by!(id: 5).id, level_id: Level.find_by!(id: 3).id)
Template.create(event_id: Event.find_by!(id: 5).id, level_id: Level.find_by!(id: 4).id)
Template.create(event_id: Event.find_by!(id: 5).id, level_id: Level.find_by!(id: 5).id)
Template.create(event_id: Event.find_by!(id: 5).id, level_id: Level.find_by!(id: 6).id)
Template.create(event_id: Event.find_by!(id: 6).id, level_id: Level.find_by!(id: 3).id)
Template.create(event_id: Event.find_by!(id: 6).id, level_id: Level.find_by!(id: 4).id)
Template.create(event_id: Event.find_by!(id: 6).id, level_id: Level.find_by!(id: 5).id)
Template.create(event_id: Event.find_by!(id: 6).id, level_id: Level.find_by!(id: 6).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 7).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 8).id, level_id: Level.find_by!(id: 11).id)
Template.create(event_id: Event.find_by!(id: 9).id, level_id: Level.find_by!(id: 7).id)
Template.create(event_id: Event.find_by!(id: 9).id, level_id: Level.find_by!(id: 8).id)
Template.create(event_id: Event.find_by!(id: 9).id, level_id: Level.find_by!(id: 9).id)
Template.create(event_id: Event.find_by!(id: 9).id, level_id: Level.find_by!(id: 10).id)
Template.create(event_id: Event.find_by!(id: 9).id, level_id: Level.find_by!(id: 11).id)

Task.find_or_create_by!(description: "Talk to an elderly person and describe your experience") do |task|
  task.description = "Talk to an elderly person and describe your experience"
  task.template_id = Template.find_by!(id: 1).id
end

Task.find_or_create_by!(description: "Hang out with an elderly person and describe your experience") do |task|
  task.description = "Hang out with an elderly person and describe your experience"
  task.template_id = Template.find_by!(id: 1).id
end

Task.find_or_create_by!(description: "Help an elderly person cross the road and describe your experience") do |task|
  task.description = "Help an elderly person cross the road and describe your experience"
  task.template_id = Template.find_by!(id: 2).id
end

Task.find_or_create_by!(description: "Play chess with an elderly person and describe your experience") do |task|
  task.description = "Play chess with an elderly person and describe your experience"
  task.template_id = Template.find_by!(id: 2).id
end

Task.find_or_create_by!(description: "Fold origami an elderly person cross the road and describe your experience") do |task|
  task.description = "Fold origami an elderly person cross the road and describe your experience"
  task.template_id = Template.find_by!(id: 3).id
end

Task.find_or_create_by!(description: "Dance with an elderly person and describe your experience") do |task|
  task.description = "Dance with an elderly person and describe your experience"
  task.template_id = Template.find_by!(id: 3).id
end

Task.find_or_create_by!(description: "Make CNY lanterns with an elderly person cross the road and describe your experience") do |task|
  task.description = "Make CNY lanterns with an elderly person cross the road and describe your experience"
  task.template_id = Template.find_by!(id: 4).id
end

Task.find_or_create_by!(description: "Teach an elderly person how to dance and describe your experience") do |task|
  task.description = "Teach an elderly person how to dance and describe your experience"
  task.template_id = Template.find_by!(id: 4).id
end

Task.find_or_create_by!(description: "Teach the kids to fold origami and describe your experience") do |task|
  task.description = "Teach the kids to fold origami and describe your experience"
  task.template_id = Template.find_by!(id: 5).id
end

Task.find_or_create_by!(description: "Teach the kids to dance and describe your experience") do |task|
  task.description = "Teach the kids to dance and describe your experience"
  task.template_id = Template.find_by!(id: 5).id
end

Task.find_or_create_by!(description: "Teach the kids the concept of integrity and describe your experience") do |task|
  task.description = "Teach the kids the concept of integrity and describe your experience"
  task.template_id = Template.find_by!(id: 6).id
end

Task.find_or_create_by!(description: "Teach the kids the concept of humility and describe your experience") do |task|
  task.description = "Teach the kids the concept of humility and describe your experience"
  task.template_id = Template.find_by!(id: 6).id
end

Card.create(student_id: Student.find_by!(user_id: User.find_by!(email: ENV["seed_email8"]).id).id, template_id: Template.find_by!(id: 4).id, completion: 0)
Card.create(student_id: Student.find_by!(user_id: User.find_by!(email: ENV["seed_email7"]).id).id, template_id: Template.find_by!(id: 3).id, completion: 0)
# Card.create(student_id: Student.find_by!(user_id: User.find_by!(email: ENV["seed_email9"]).id).id, template_id: Template.find_by!(id: 4).id, completion: 0)
# Card.create(student_id: Student.find_by!(user_id: User.find_by!(email: ENV["seed_email10"]).id).id, template_id: Template.find_by!(id: 4).id, completion: 3)
# Card.create(student_id: Student.find_by!(user_id: User.find_by!(email: ENV["seed_email11"]).id).id, template_id: Template.find_by!(id: 4).id, completion: 3)
# Card.create(student_id: Student.find_by!(user_id: User.find_by!(email: ENV["seed_email12"]).id).id, template_id: Template.find_by!(id: 4).id, completion: 3)

Tasktracker.create(card_id: Card.find_by!(id: 1).id, task_id: Task.find_by!(id: 7).id)
Tasktracker.create(card_id: Card.find_by!(id: 1).id, task_id: Task.find_by!(id: 8).id)
Tasktracker.create(card_id: Card.find_by!(id: 2).id, task_id: Task.find_by!(id: 5).id)
Tasktracker.create(card_id: Card.find_by!(id: 2).id, task_id: Task.find_by!(id: 6).id)
