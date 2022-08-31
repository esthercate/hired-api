class Admin < ApplicationRecord
   
    has_secure_password

    has_many :employers, dependent: :destroy

    validates :first_name, :last_name, :role, presence: true
    #validates :email, presence: true, uniqueness: true
    validates :password, length: {in: 6...20}
    
end
