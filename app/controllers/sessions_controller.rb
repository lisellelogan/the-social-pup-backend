class SessionsController < ApplicationController

    def create
        current_user = User.find_by(email: params[:email])
        if current_user
            render json: {message: "login successful!"}
        else
            render json: {message: "We can't find you. Please try agian."}
        end
    end
end