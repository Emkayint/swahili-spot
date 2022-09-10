class PaymentsController < ApplicationController

  skip_before_action :authorize_admin

  @@short_code = 174_379
  @@passkey = "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919"
  @@callback = "https://0265-196-216-70-170.in.ngrok.io"
  @@transaction_description = "Payment of X"
  @@account_reference = "CompanyXLTD"
  @@consumer_key = '4pRUGofOsGz3ZKJaJGccw3645N4YrA1O'
  @@consumer_secret = 'aJhPXkUMUAxNkABU'


  def create
    amount_pay = calculate_amount
    
  end

  def index
    
    res = call_mpesa
    byebug

    if(res && res["errorMessage"] == "Bad Request - Invalid PhoneNumber")
      render json: { error: "Invalid Phone Number"}
    end

    # render json: { message: "Amount to pay"}

  end
  

  private 

  def pay_params
    params.permit(:amount)
  end

  def calculate_amount
    orders = @current_user.orders.where({status: "pending"})
    amount = 0
    orders.each do |order|
      amount += (order.quantity * order.product.price)
    end
    amount
  end

  def call_mpesa
    Mpesa.new(short_code: @@short_code, passkey: @@passkey, amount: 1, phone_number: 254742075647, callback: @@callback, consumer_key: @@consumer_key, consumer_secret: @@consumer_secret, account_reference: @@account_reference, transaction_description: @@transaction_description).request
  end
end
