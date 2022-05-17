class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            log_in(@user)
            redirect_to root_path
        else
            redirect_to login_path, notice: "Invalid username or password"
        end
    end

    def destroy
        log_out()
        redirect_to login_path, notice: "You have successfully logged out"
    end

end