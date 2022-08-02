class UsersController < ApplicationController
  
  def create
    user = User.create!(user_params)
    if user.valid?
      # session[:user_id] = user.id
      render json: user, status: :created
    else 
      render json: { errors: user.errors.full_message }
    end
  end

  private

  def user_params
    params.permit(:username, :password, :phone, :password_confirmation)
  end
end
