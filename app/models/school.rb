class School < ApplicationRecord
  has_many :school_users
  has_many :events
  has_many :students
  belongs_to :education_level
  has_many :templates, through: :events
end

# PUBLIC METHODS
def logo_image
  "https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/#{logo}"
end
