class School < ApplicationRecord
  has_many :school_users
  has_many :events
end
