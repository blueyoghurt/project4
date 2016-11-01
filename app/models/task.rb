class Task < ApplicationRecord
  belongs_to :event
  belongs_to :level
  has_many :cards
end
