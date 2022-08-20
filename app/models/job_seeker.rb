class JobSeeker < ApplicationRecord
  has_secure_password

  has_one :profile
end
