class Task < ApplicationRecord
  belongs_to :level
  has_many :cards
  belongs_to :event
end
