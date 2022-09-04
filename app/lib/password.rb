require "base64"

class Password
  def initialize(short_code:, passkey:)
    @short_code = short_code
    @passkey = passkey
  end

  def get_password
    time_stamp = Time.now.strftime('%Y%m%d%H%M%S').downcase.tr(' ', '0')
    password = Base64.strict_encode64("#{@short_code}#{@passkey}#{time_stamp}")

    {password: password, time_stamp: time_stamp}
  end
  
end