module AuthHelpers
  def authWithUser (user)
    request.headers['Authorization'] = "#{JsonWebToken.decode(user)}"
  end
  def clearToken
    request.headers['Authorization'] = nil
  end
end
