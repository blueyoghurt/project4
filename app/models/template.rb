class Template < ApplicationRecord
  belongs_to :event
  belongs_to :level
  has_many :cards
  has_many :tasks;
end
