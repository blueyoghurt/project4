class Card < ApplicationRecord
  belongs_to :student
  belongs_to :template
  has_many :tasks, through: :template
end
