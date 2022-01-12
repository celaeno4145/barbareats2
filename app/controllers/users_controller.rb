class UsersController < ApplicationController

  def login
    logged_in_user
  end
  def index
  end

  def show
    @user = User.find_by(:user_id => params[:user_id])
  end

  def register
    @user = UserHide.new
    @user.name = params[:user][:user_name]
    @user.email = params[:user][:user_mail]
    @user.password = params[:user][:user_pass]
    @user.password_confirmation = params[:user][:user_pass_kakunin]
    @user.break = true
    @user.save
    
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
    @user = UserHide.new(user_params)
    @user.break = true
    @user.save
    redirect_to sessions_new_path
  end

  def user_params
    @user2 = params
      params.require(:user_hide).permit(:name, :email, :password, :password_confirmatio,:image)
      
  end
  helper_method :login
end
