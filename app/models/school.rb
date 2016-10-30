class School < ApplicationRecord
  has_many :school_users
  has_many :events
  has_many :students
  has_many :templates, through: :events
end
