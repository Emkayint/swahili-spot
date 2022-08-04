class ProductsController < ApplicationController
  skip_before_action :authorize, only: :index

  def index
    products = Product.all
    render json: products, status: :ok
  end
end
