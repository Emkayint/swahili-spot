class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessed
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  skip_before_action :authorize, only: :create
  skip_before_action :authorize_admin, only: [:create, :show]
  def index
    render json: User.all,  status: :ok
  end

  def create
    @user = User.create(user_params)
    if user.valid?
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { jwt: token, exp: time.strftime('%m-%d-%Y %H:%M'),
                     username: @user.username, email: @user.phone, role: @user.role, phone: @user.phone }, status: :ok
    else 
      render json: { errors: user.errors.full_message }
    end
  end

  def show
    render json: @current_user
  end

  private

  def user_params
    params.permit(:username, :password, :phone, :password_confirmation)
  end

  def render_not_found
    render json: {error: "User Not found"}
  end


  def render_unprocessed(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
end
