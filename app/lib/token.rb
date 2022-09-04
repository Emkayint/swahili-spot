require "open-uri"
require "net/http"
require "openssl"
require 'json'

class Token

  def initialize(consumer_key:, consumer_secret:)
    @uri = URI('https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials')
    @consumer_key = consumer_key
    @consumer_secret = consumer_secret
  end
 
  def get_access_token
    Net::HTTP.start(@uri.host, @uri.port,
                    use_ssl: @uri.scheme == 'https',
                    verify_mode: OpenSSL::SSL::VERIFY_NONE) do |http|
      request = Net::HTTP::Get.new @uri.request_uri
      request.basic_auth @consumer_key, @consumer_secret

      response = http.request request # Net::HTTPResponse object

      # puts response
      res = JSON.parse(response.body)
      res['access_token']
    end
  end
end