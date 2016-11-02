class Level < ApplicationRecord
  has_many :students
  has_many :templates
  belongs_to :education_level
end
