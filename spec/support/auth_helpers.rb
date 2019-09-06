module AuthHelpers
  def authWithUser (user)
    request.headers['Authorization'] = "#{JsonWebToken.decode(user_id: user.id)}"
  end
  def clearToken
    request.headers['Authorization'] = nil
  end
end
