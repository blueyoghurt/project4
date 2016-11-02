class Template < ApplicationRecord
  belongs_to :event
  belongs_to :level
  belongs_to :ngo
  has_many :tasks
  has_many :cards
end
