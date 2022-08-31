class JobSeeker < ApplicationRecord
  has_secure_password

  has_one :profile, dependent: :destroy

  belongs_to :employer, optional: true

  validates :first_name, :last_name, presence: true
  validates :user_name, :email, uniqueness: true
  #validates :password, length: {in: 1..20}
  #validates :phone_number, length: {in: 9...13}
end
