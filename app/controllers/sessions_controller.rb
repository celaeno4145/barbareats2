class SessionsController < ApplicationController
  def new
  end
  
  def create
    shop = Shop.find_by(email: params[:session][:email].downcase)
    user = UserHide.find_by(email: params[:session][:email].downcase)
    if shop == nil
      if user == nil
        redirect_to "/sessions/new"
      elsif false == user.break
        redirect_to "/users/break_zumi"
      elsif user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to users_logged_in_path(user: user)
      else
        redirect_to "/sessions/new"
      end
    else
      if false == shop.break
        redirect_to "/users/break_zumi"
      elsif shop && shop.authenticate(params[:session][:password])
        shop_log_in shop
        redirect_to shops_logged_in_path(shop: shop)
      else
        redirect_to "/sessions/new"
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to "/users/not_logged_in"
  end
  def shop_destroy
    shop_log_out if shop_logged_in?
    redirect_to "/shops/not_logged_in"
  end
end
