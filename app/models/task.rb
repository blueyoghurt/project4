class Task < ApplicationRecord
  belongs_to :template
  has_many :tasktrackers
  has_many :cards, through: :tasktrackers
  has_one :education_level, through: :event
end
