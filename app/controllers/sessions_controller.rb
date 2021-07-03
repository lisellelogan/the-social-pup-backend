class SessionsController < ApplicationController

    def create
        @current_user = User.find_by(email: params[:email])
        if @current_user
            render json: UserSerializer.new(@current_user)
        else
            render json: {error: "We can't find you. Please try agian."}
        end
    end

    def destroy
        @current_user = ""
        render json: {message: "Logout successful. See you next time!"}
    end
end