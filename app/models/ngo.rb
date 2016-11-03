class Ngo < ApplicationRecord
  has_many :ngo_users
  has_many :events
  belongs_to :ngo_category
  has_many :templates, through: :events
end

def logo_image
  "https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/#{logo}"
end
