class SessionsController < ApplicationController

    def create
        current_user = User.find_by(email: params[:email])
        if current_user
            render json: current_user.to_json
        else
            render json: {error: "We can't find you. Please try agian."}
        end
    end
end