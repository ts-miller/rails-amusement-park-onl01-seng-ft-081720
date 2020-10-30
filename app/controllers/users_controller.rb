class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        if !logged_in?
            redirect_to '/'
        end
    end

    def index
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :tickets, :nausea, :happiness, :height, :admin)
    end

    def logged_in?
        !session[:user_id].blank?
    end

end
