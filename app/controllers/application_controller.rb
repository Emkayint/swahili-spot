class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  # rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :authorize
  before_action :authorize_admin

  private

  def authorize
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized, unless @current_user
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized, unless @current_user
    end
  end

  def authorize_admin
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized, unless @current_user.role == "admin"
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized, unless @current_user.role == "admin"
    end
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
