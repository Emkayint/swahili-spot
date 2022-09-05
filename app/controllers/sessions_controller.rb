class SessionsController < ApplicationController
  skip_before_action :authorize, only: :create
  skip_before_action :authorize_admin

  # def create
  #   user = User.find_by(username: params[:username])
  #   # byebug
  #   if user&.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     render json: user, status: :created
  #   else
  #     render json: {error: {login: "Invalid Username or password"}}, status: :unauthorized
  #   end
  # end

  def create
    @user = User.find_by_username(params[:username])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { jwt: token, exp: time.strftime('%m-%d-%Y %H:%M'),
                     username: @user.username, email: @user.phone, role: @user.role }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

 

  def destroy
    session.delete :user_id
    head :no_content
  end

  private 
  def user_params
    params.permit(:username, :id, :password)
  end
end
