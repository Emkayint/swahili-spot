class Mpesa
  def initialize(short_code:, passkey:, amount:, phone_number:, callback:, consumer_key: , consumer_secret:, account_reference:, transaction_description: )
    @short_code = short_code
    @consumer_key = consumer_key
    @consumer_secret = consumer_secret
    @passkey = passkey
    @amount = amount
    @phone_number = phone_number
    @callback = callback
    @account_reference = account_reference 
    @transaction_description = transaction_description
  end

  def token
    Token.new(consumer_key: @consumer_key, consumer_secret: @consumer_secret ).get_access_token
  end

  def request 
    StkPush.new(token: token, callback: @callback, passkey:@passkey, amount: @amount, phone_number: @phone_number, short_code: @short_code, account_reference: @account_reference, transaction_description: @transaction_description).push
  end

end