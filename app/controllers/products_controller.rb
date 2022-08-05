class ProductsController < ApplicationController
  skip_before_action :authorize, only: :index

  def index
    products = Product.all
    render json: products, status: :ok
  end

  def create
    product = Product.create!(product_params)
    render json: product, status: :ok
  end
  

  private
  def product_params
    params.permit(:name, :description, :id, :price, :image, :amount)
  end
   

end
