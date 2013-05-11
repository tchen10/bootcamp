class PagesController < ApplicationController
  def home
    if session[:user_id].present?
      redirect_to user_url(session[:user_id])
    end
  end
end
