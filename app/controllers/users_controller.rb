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
    @user = User.new(params[:user])

    if @user.save
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

    if @user.update_attributes(params[:user])
      redirect_to @user
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
