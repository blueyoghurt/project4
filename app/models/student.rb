class Student < ApplicationRecord
  belongs_to :user
  belongs_to :level
  belongs_to :school
  has_many :cards
end
