class Card < ApplicationRecord
  belongs_to :student
  belongs_to :event
  has_many :tasks
end
