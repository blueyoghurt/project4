class Ngo < ApplicationRecord
  has_many :ngo_users
  belongs_to :ngo_category
end
