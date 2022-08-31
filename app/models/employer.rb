class Employer < ApplicationRecord
    has_secure_password

    belongs_to :admin

    has_many :job_seekers

    validates :role, :user_name, :company_name, :first_name, :last_name, :admin_id, presence: true
    validates :email, :user_name, uniqueness: true
    validates :password, length: {in: 1...20}
    validates :phone_number, length: {in: 9...13}
    
end
