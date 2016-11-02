class Template < ApplicationRecord
  belongs_to :event
  belongs_to :level
  has_many :tasks
  has_many :cards
end
