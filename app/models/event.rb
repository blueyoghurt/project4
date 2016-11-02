class Event < ApplicationRecord
  belongs_to :school
  belongs_to :education_level
  has_many :templates
  has_many :tasks, through: :templates
  has_many :cards, through: :templates
end
