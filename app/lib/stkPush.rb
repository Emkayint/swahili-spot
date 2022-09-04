require "open-uri"
require "net/http"
require "openssl"
require 'json'

class StkPush
  def initialize(password:, token:, callback:, passkey:, amount:, phone_number:, short_code:, time_stamp:, account_reference:, transaction_description:)
    @password = password
    @token = token
    @callback= callback
    @passkey = passkey
    @amount = amount
    @phone_number = phone_number
    @short_code = short_code
    @time_stamp = time_stamp
    @account_reference = account_reference 
    @transaction_description = transaction_description
  end

  def push
    byebug
    # passkey = "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919"
    auth = "Bearer #{@token}"
    url = URI("https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest")
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = "application/json"
    request["Authorization"] = auth
    request.body = {
        "BusinessShortCode": @short_code,
        "Password": @password,
        "Timestamp": @time_stamp,
        "TransactionType": "CustomerPayBillOnline",
        "Amount": @amount,
        "PartyA": @phone_number,
        "PartyB": @short_code,
        "PhoneNumber": @phone_number,
        "CallBackURL": @callback,
        "AccountReference": "CompanyXLTD",
        "TransactionDesc": "Payment of X" 
    }.to_json
    response = https.request(request)
    JSON.parse(response.body)
    end

end