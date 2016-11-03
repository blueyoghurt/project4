class Tasktracker < ApplicationRecord
  belongs_to :card
  belongs_to :task

  def self.picture_image
    "https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/#{picture}"
  end

end
