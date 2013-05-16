class UsersController < ApplicationController
  before_filter :authorize_user, only: [:edit, :update, :destroy]

  def authorize_user
    @user = User.find_by_id(params[:id])
    if @user.id != session[:user_id]
      redirect_to :back, notice: "Nice Try"
    end
  end
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.name = params[:name]

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_url(@user.id)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.name = params[:name]
    @user.image_url = params[:image_url]
    @user.home = params[:home]
    @user.birthday = params[:birthday].map{|k,v| v}.join("-").to_date
    @user.bio = params[:bio]

    if @user.save
      redirect_to user_url(@user.id)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
      end
end
