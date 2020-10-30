class SessionController < ApplicationController

    def new

    end

    def create
        user = User.find_by(id: params[:user][:id])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        end
    end

    def delete
        reset_session
        redirect_to '/'
    end
end