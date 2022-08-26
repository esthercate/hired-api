class JobSeekersController < ApplicationController
  wrap_parameters format: []
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    seeker = JobSeeker.all.order(id: :desc)
    render json: seeker, status: :ok
  end
  
  def create
    seeker = JobSeeker.create!(seeker_params)
    session[:user_id] = seeker.id
    render json: seeker, status: :accepted
  end

  def show
    current_seeker = JobSeeker.find(session[:user_id])
    render json: current_seeker, status: :ok
  end

  def destroy
    seeker = JobSeeker.find_by(id: params[:id])

    seeker.destroy
    render json: {}, status: :no_content
  end


  private

  def render_unprocessable_entity(invalid)
    render json:{error: invalid.record.errors}, status: :unprocessable_entity
  end

  def seeker_params
    params.permit(:first_name, :last_name, :user_name, :email, :phone_number, :password, :role, :admin_id, :employer_id)
  end
end
