class User < ApplicationRecord
  #ASSOCIATIONS

  has_one :school_user
  has_one :ngo_user
  has_one :ngo, through: :ngo_user
  has_one :student
  has_one :school, through: :student
  has_many :cards, through: :student

  # MIXINS
  has_secure_password

  # CONSTANTS
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # VALIDATIONS
  # validates :profile_pic,
  # allow_blank: true

  # validates :usertype,
  # pressence: true

  validates :email,
  presence: true,
  length: { maximum: 255 },
  uniqueness: {case_sensitive: false},
  format: VALID_EMAIL_REGEX

  validates :first_name,
  presence: true,
  length: { in: 3..50 }

  validates :last_name,
  presence: true,
  length: { in: 3..50 }

  validates :password, length: { in: 8..72 } , on: :create, :if => :password_needs_validating?

  # custom method to ensure we have atleast one admin user
  # validate :atleast_one_admin

  # HOOKS
  before_save :titlecase_fields

  # PUBLIC METHODS
  def profile_image
    "https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/#{profile_pic}"
  end

  def name
    "#{first_name.titlecase} #{last_name.titlecase}"
  end

  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end

  def logo_image
    "https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/#{logo}"
  end

  # PRIVATE METHODS
  private

  # def atleast_one_admin
  #   if is_admin == false && User.where(:is_admin => true).count < 2
  #     errors.add(:base, "There must be at least 1 admin user")
  #   end
  # end

  def password_needs_validating?
    if new_record? || password.present?
      true
    else
      false
    end
  end

  def titlecase_fields
    self.email = email.downcase
    self.first_name = first_name.downcase.titlecase
    self.last_name = last_name.downcase.titlecase
  end

end
