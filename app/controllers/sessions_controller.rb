class SessionsController < ApplicationController

    def current_user
        current_user = User.find_by(email: params[:email])
        if logged_in? === true
            render json: {message: "login successful!"}
        else
            render json: {message: "We can't find you. Please try agian."}
        end
    end

    def logged_in?
        !!current_user
    end

end