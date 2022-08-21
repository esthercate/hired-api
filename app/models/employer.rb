class Employer < ApplicationRecord
    has_secure_password

    belongs_to :admin

    validates :role, :subscription, :company_name, :first_name, :last_name, :admin_id, :employer, presence: true
    validates :email, :user_name, :phone_number, uniqueness: true
    validates :password, length: {in: 6...20}
    validates :phone_number, length: {in: 9...13}

end
