class SessionsController < ApplicationController

    def current_user
        current_user = User.all.find_by(params[:email])
    end

    def logged_in?
        if !!current_user
            # render json success message
            # return user show page
            # else => display error message
        end
    end

end