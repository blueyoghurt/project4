class Card < ApplicationRecord
  belongs_to :student
  belongs_to :template
end
