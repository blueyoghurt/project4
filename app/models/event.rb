class Event < ApplicationRecord
  belongs_to :school
  has_many :templates
  has_many :cards, through: :templates
end
