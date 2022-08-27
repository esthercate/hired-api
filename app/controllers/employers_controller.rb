class EmployersController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index 
        employers = Employer.all 
        render json: employers
    end

    def create 
        employer = Employer.create!(employer_params)
        session[:user_id] = employer.id
        render json: employer, status: :created
    end

    private 

    def render_unprocessable_entity(invalid)
        render json:{error: invalid.record.errors}, status: :unprocessable_entity
    end

    def employer_params 
        params.permit(:user_name, :email, :phone_number, :role, :subscription, :company_name, :first_name, :last_name, :password, :admin_id)
    end
end
