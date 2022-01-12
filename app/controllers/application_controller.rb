class ApplicationController < ActionController::Base
    include SessionsHelper

    
    # ログイン済みユーザーかどうか確認
    def logged_in_user
        unless logged_in?
            redirect_to "/sessions/new"
        end
    end
    def shop_logged_in_user
        unless shop_logged_in?
            redirect_to "/sessions/new"
        end
    end
end