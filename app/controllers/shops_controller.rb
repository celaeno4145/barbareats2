class ShopsController < ApplicationController

  def login
    shop_logged_in_user
  end
  def count
    return Shop.count
  end
  def index
    @shop3 = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end
  def edit
    @shop = Shop.find_by(shop_params)
  end
  def update
    @shop = Shop.find_by(params[:shop][:id])
    @shop.update(shop_params)
    redirect_to shops_logged_in_path(shop: @shop)
  end
  def register
    @shop = Shop.new
    @shop.name = params[:shop][:name]
    @shop.shopname = params[:shop][:shopname]
    @shop.shopadd = params[:shop][:shopadd]
    @shop.tell = params[:shop][:tell]
    @shop.email = params[:shop][:email]
    @shop.password = params[:shop][:password]
    @shop.password_confirmation = params[:shop][:password_confirmation]
    @shop.break = true
    @shop.save
  end
  def create
    @shop = Shop.new(shop_params)
    @shop.break = true
    @shop.save
    redirect_to sessions_new_path
  end

  def shop_params
    @shop2 = params
      params.require(:shop).permit(:name, :email, :password, :password_confirmatio, :tell, :shopname, :shopadd,:image)
      
  end

  helper_method :login
end
