class PaymentsController < ApplicationController

  skip_before_action :authorize

  @@phone_number = 254742075647
  @@short_code = 174_379
  @@passkey = "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919"
  @@callback = "https://locahost/,,,"
  @@transaction_description = "Orders at Swahili spot kinoo"
  @@account_reference = "Swahili Spot Kinoo"
  @@consumer_key = '4pRUGofOsGz3ZKJaJGccw3645N4YrA1O'
  @@consumer_secret = 'aJhPXkUMUAxNkABU'


  def create
    amount_pay = calculate_amount
    byebug
    
  end

  def index
    
    res = call_mpesa
    byebug

  end
  

  private 

  def pay_params
    params.permit(:amount)
  end

  def calculate_amount
    orders = Order.where({status: "pending"})
    amount = 0
    orders.each do |order|
      amount += (order.quantity * order.product.price)
    end
    amount
  end

  def call_mpesa
    Mpesa.new(short_code: @@short_code, passkey: @@passkey, amount: calculate_amount, phone_number: @@phone_number, callback: @@callback, consumer_key: @@consumer_key, consumer_secret: @@consumer_secret, account_reference: @@account_reference, transaction_description: @@transaction_description).request
  end
end
