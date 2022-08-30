class PaymentsController < ApplicationController

  def create
    byebug

    orders =  Order.all
    orders.each{|order| order.status = "pending", order.save}
    
    render json: orders, status: :ok
    
  end

  private 

  def pay_params
    params.permit(:amount)
  end
end
