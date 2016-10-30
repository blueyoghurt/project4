class Level < ApplicationRecord
  has_many :students
  has_many :templates
end
