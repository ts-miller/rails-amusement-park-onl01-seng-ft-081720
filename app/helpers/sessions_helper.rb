module SessionsHelper

    def sessions_path
        "/sessions"
    end

    def logged_in?
        !session[:user_id].blank?
    end
end