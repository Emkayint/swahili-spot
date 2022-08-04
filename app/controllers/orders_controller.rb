class OrdersController < ApplicationController
  # skip_before_action :authorize, only: [:create, :index]
  def index
    product = Order.where(user_id: session[:user_id])
    render json: product, include: [:product, :user], status: :ok
  end

  def show
    product = Order.find(params[:id])
    render json: product, include: [:product, :user], status: :ok
  end


  private

  def order_params
    params.permit(:name, :id, :image, :description, :price, :amount)
  end

end
