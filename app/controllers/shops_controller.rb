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
    @shop = Shop.find_by(id: params[:shop][:id])
    @shop.update(shop_params)
    @shop.save
    redirect_to shops_logged_in_path(shop: @shop)
  end
  def create
    @shop = Shop.new(shop_params)
    @shop.break = true
    @shop.save
    redirect_to sessions_new_path
  end

  def shop_params
    params.require(:shop).permit(:name, :email, :password, :password_confirmatio, :tell, :shopname, :shopadd, :image)
  end
  
  def detail
    @shop = Shop.find_by(:id => params[:shopid])
  end
  helper_method :login
end
