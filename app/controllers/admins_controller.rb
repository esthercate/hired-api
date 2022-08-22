class AdminsController < ApplicationController
     wrap_parameters format: []
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index 
        admins = Admin.all 
        render json: admins
    end

    def create 
        admin = Admin.create!(admin_params)
        render json: admin, status: :created
    end

    private 

    def admin_params
        params.permit(:first_name, :last_name, :email, :role)
    end

    def render_unprocessable_entity(invalid)
        render json:{error: invalid.record.errors}, status: :unprocessable_entity
    end

end