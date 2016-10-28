class User < ApplicationRecord
  has_one :school_user
  has_one :ngo_user
end
