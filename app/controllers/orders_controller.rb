class OrdersController < ApplicationController
  def index
    product = Product.all
    render json: product, include: :users, status: :ok
  end

  def show
    product = Product.find(params[:id])
    render json: product, status: :ok
  end


  private

  def order_params
    params.permit(:name, :id, :image, :description, :price, :amount)
  end

end
