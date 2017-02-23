helpers do
  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session[:user_id] = nil
  end

  def current_user
    session[:user_id]
  end

  def user?
    if current_user != nil
      true
    else
      false
    end
  end
end