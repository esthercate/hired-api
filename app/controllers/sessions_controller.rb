class SessionsController < ApplicationController
  def create
    # user = Admin.find_by(email: params[:email]) || JobSeeker.find_by(email: params[:email])

    role = params[:role]

    user = case role
    when 'admin'
      Admin.find_by(email: params[:email])
    when 'employer'
      Employer.find_by(email: params[:email]) || Employer.find_by(user_name: params[:user_name])
    when 'job seeker'
      JobSeeker.find_by(email: params[:email]) || JobSeeker.find_by(user_name: params[:user_name])
    end

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: {error: {login: 'Invalid username or password'}}, status: :unauthorized
    end
  end
end
