module SessionsHelper
    #クッキー保存
    def log_in(user)
        session[:user_id] = user.id
    end
    #セッション確認
    def current_user
        if session[:user_id]
        @current_user = @current_user || UserHide.find_by(id: session[:user_id])
        end
    end

    def current_user?(user)
        user == current_user
    end
    #ログイン中かの確認
    def logged_in?
        !current_user.nil?
    end
    #ログアウト
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
    def taikai 
        @user = UserHide.find_by(id: session[:user_id])
        @user.update(break: false)
        session.delete(:user_id)
        @current_user = nil
    end

    def shop_log_in(shop)
        session[:shop_id] = shop.id
    end
    #セッション確認
    def shop_current_user
        if session[:shop_id]
        @current_shop = @current_shop || Shop.find_by(id: session[:shop_id])
        end
    end

    def shop_current_user?(shop)
        shop == shop_current_user
    end
    #ログイン中かの確認
    def shop_logged_in?
        !shop_current_user.nil?
    end
    #ログアウト
    def shop_log_out
        session.delete(:shop_id)
        @shop_current_user = nil
    end
    def shop_taikai 
        @shop = Shop.find_by(id: session[:shop_id])
        @shop.update(break: false)
        session.delete(:shop_id)
        @shop_current_user = nil
    end
end
