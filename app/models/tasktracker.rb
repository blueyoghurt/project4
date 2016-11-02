class Tasktracker < ApplicationRecord
  belongs_to :card
  belongs_to :task
end
