class JobSeeker < ApplicationRecord
  has_secure_password

  has_one :profile, dependent: :destroy

  validates :first_name, :last_name, presence: true
  validates :user_name, :email, uniqueness: true
  validates :password, length: {in: 6..20}
  #validates :phone_number, length: {in: 9...13}
end
