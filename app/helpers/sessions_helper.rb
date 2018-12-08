module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_post
    @current_post ||= Micropost.find_by(id: session[:micropost_id])
  end

  def logged_in?
    !!current_user
  end
end