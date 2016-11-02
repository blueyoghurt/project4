class Ngo < ApplicationRecord
  has_many :ngo_users
  belongs_to :ngo_category
  has_many :templates, through: :events
end
