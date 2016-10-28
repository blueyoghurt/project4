class NgoUser < ApplicationRecord
  belongs_to :ngo
  belongs_to :user
end
