class ProfilesController < ApplicationController
  wrap_parameters format: []
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index 
    render json: Profile.all
  end 

  def create
    profile = Profile.create!(profile_params)
    render json: profile, status: :accepted
  end

  def show
    profile = Profile.find(params[:id])
    render json: profile, status: :ok
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(update_params)
    render json: profile, status: :ok
  end

  private

  def render_unprocessable_entity(invalid)
    render json:{error: invalid.record.errors}, status: :unprocessable_entity
  end

  def profile_params
    params.permit(:about_me, :description, :job_seeker_id, :experience_years, :salary_expectation, :image, :resume, :availability)
  end

  def update_params
    params.permit(:about_me, :description, :job_seeker_id, :experience_years, :salary_expectation, :image, :resume, :availability)
  end

end
