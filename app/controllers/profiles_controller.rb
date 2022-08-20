class ProfilesController < ApplicationController
  wrap_parameters format: []
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def create
    profile = Profile.create(profile_params)
    render json: profile, status: :accepted
  end

  


  private

  def render_unprocessable_entity(invalid)
    render json:{error: invalid.record.errors}, status: :unprocessable_entity
  end

  def profile_params
    params.permit(:about_me, :description, :job_seeker_id, :experience_years, :salary_expectation, :file)
  end
end
