class UsersController < ApplicationController

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
      redirect_to users_url
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

    if @user.save
            redirect_to users_url
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
