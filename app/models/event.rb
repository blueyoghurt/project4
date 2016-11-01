class Event < ApplicationRecord
  belongs_to :school
  belongs_to :education_level
  has_many :tasks
  has_many :cards
end
