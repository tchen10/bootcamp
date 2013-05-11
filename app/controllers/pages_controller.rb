class PagesController < ApplicationController
  def home
    if session[:user_id].present?
      redirect_to users_url
    end
  end
end
