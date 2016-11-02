class Task < ApplicationRecord
  belongs_to :template
  has_many :tasktrackers
  has_many :cards, through: :tasktrackers
end
