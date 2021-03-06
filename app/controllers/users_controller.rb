class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def create 
        user = User.create(user_params)
        if user
            render json: UserSerializer.new(user)
        else  
            render json: {error: "Hmmm something went wrong. Please try again."}
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :pup_name, :pup_age, :pup_breed, :pup_fully_vaccinated, :pup_location, :pup_personality, :owner_name, :picture)
    end
end
