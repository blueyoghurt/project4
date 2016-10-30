class Event < ApplicationRecord
  belongs_to :school
  has_many :templates
end
