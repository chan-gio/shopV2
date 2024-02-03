class SessionsController < ApplicationController
    def destroy
        session[:user_id] = nil
        redirect_to main_path, notice: "Logged out"
    end
end