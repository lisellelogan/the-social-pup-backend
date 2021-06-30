class SessionsController < ApplicationController

    def current_user
        current_user = User.find_by(email: params[:email])
        if logged_in? === true
            # render json success message
            # return user show page
            # else => display error message
        end
    end

    def logged_in?
        !!current_user
    end

end