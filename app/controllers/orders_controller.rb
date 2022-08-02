class OrdersController < ApplicationController
  def index
    product = Order.all
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
