class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

  def authorize
    unless session[:user_id]
      redirect_to home_url
    end
    return
  end
end
