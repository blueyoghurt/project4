class Level < ApplicationRecord
  has_many :students
  belongs_to :education_level
end
