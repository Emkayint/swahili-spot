require "open-uri"
require "net/http"
require "openssl"
require 'json'
require 'base64'

class StkPush
  def initialize(token:, callback:, passkey:, amount:, phone_number:, short_code:, account_reference:, transaction_description:)
    @token = token
    @callback= callback
    @passkey = passkey
    @amount = amount
    @phone_number = phone_number
    @short_code = short_code
    @account_reference = account_reference 
    @transaction_description = transaction_description
  end

  def push
    time_stamp = Time.now.strftime('%Y%m%d%H%M%S').downcase.tr(' ', '0')
    password = Base64.strict_encode64("#{@short_code}#{@passkey}#{time_stamp}")
    auth = "Bearer #{@token}"
    url = URI('https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest')
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Post.new(url)
    request['Content-Type'] = 'application/json'
    request['Authorization'] = auth
    request.body = {
      "BusinessShortCode": 174_379,
      "Password": password,
      "Timestamp": time_stamp,
      "TransactionType": 'CustomerPayBillOnline',
      "Amount": @amount,
      "PartyA": @phone_number,
      "PartyB": @short_code,
      "PhoneNumber": @phone_number,
      "CallBackURL": @callback,
      "AccountReference": @account_reference,
      "TransactionDesc": @transaction_description
    }.to_json
    response = https.request(request)
    JSON.parse(response.body)
    end

end