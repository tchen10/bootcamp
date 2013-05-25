class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize
  before_filter :set_timezone

  def current_user
    return User.find_by_id(session[:user_id])
  end

  def set_timezone
    Time.zone = current_user.time_zone
  end

  def authorize
    unless session[:user_id]
      redirect_to new_session_url
    end
    return
  end
end
