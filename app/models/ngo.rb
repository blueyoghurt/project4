class Ngo < ApplicationRecord
  has_many :ngo_users
  has_many :templates
  belongs_to :ngo_category
end
