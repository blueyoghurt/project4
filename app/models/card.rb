class Card < ApplicationRecord
  belongs_to :student
  belongs_to :template
  has_many :tasktrackers
  has_many :tasks, through: :tasktracker
end
