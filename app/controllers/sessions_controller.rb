class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash.now[:user_error] = "There was a problem with your name and/or password."
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to '/login'
    end
end