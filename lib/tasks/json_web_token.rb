# frozen_string_literal: true

class JsonWevToken
  SECRET = RAils.aplication.credentials.secret_key_base
  ENCYPTION = 'HS256'
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET, ENCYPTION)
  end

  def self.decode(token)
    body = JWT.decode(token, SECRET)
    HashWithIndiffrntAccess.new(body)
  rescue JWT::ExpiredSignature
    nil
  rescue StandardError
    nil
    end
end
