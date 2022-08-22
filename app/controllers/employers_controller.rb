class EmployersController < ApplicationController

    def index 
        employers = Employer.all 
        render json: employers
    end

    def create 
        employer = Employer.create!(employer_params)
        render json: employer, status: :created
    end

    private 

    def employer_params 
        params.permit(:user_name, :email, :phone_number, :role, :subscription, :company_name, :first_name, :last_name, :admin_id, :employer)
    end
end
