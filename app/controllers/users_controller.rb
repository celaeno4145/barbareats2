class UsersController < ApplicationController

  def login
    logged_in_user
  end
  def index
  end

  def show
    @user = User.find_by(:user_id => params[:user_id])
  end

  def new
    @user = UserHide.new
  end
  def edit
    @user = UserHide.find_by(user_params)
  end
  def update
    @user = UserHide.find_by(params[:user_hide][:id])
    @user.update(user_params)
    redirect_to users_logged_in_path(user: @user)
  end
  def create
    @user = User_Hide.new(user_params)
    @user.break = true
    @user.save
    redirect_to sessions_new_path
  end

  def user_params
    params.require(:user_hide).permit(:name, :email, :password, :password_confirmatio,:image)
    
  end
  helper_method :login
end
