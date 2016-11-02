class School < ApplicationRecord
  has_many :school_users
  has_many :events
  has_many :students
  belongs_to :education_level
  has_many :templates, through: :events
end
