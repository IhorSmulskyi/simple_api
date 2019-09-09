# frozen_string_literal: true

module AuthHelpers
  def authWithUser(user)
    request.headers['Authorization'] = JsonWebToken.encode(user_id: user.id).to_s
  end

  def clearToken
    request.headers['Authorization'] = nil
  end
end
