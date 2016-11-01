class EducationLevel < ApplicationRecord
  has_many :schools
  has_many :levels
  has_many :events
end
