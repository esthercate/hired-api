class SessionsController < ApplicationController
  def create
    if Admin.find_by(email: params[:email])
      user = Admin.find_by(email: params[:email])
    elsif Employer.find_by(email: params[:email]) || Employer.find_by(user_name: params[:email])
      user = Employer.find_by(email: params[:email]) || Employer.find_by(user_name: params[:email])
    elsif JobSeeker.find_by(email: params[:email]) || JobSeeker.find_by(user_name: params[:email])
      user = JobSeeker.find_by(email: params[:email]) || JobSeeker.find_by(user_name: params[:email])
    end

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: {error: {login: 'Invalid username or password'}}, status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
  

end
