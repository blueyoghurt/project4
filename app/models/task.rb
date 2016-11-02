class Task < ApplicationRecord
  belongs_to :template
  has_many :tasktrackers
end
