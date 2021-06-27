class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users, include: [:friendships])
    end

    def create 
        user = User.find_or_create_by(user_params)
        render json: UserSerializer.new(user)
    end

    def user_params
        params.require(:user).permit(:email, :password, :pup_name, :pup_age, :pup_breed, :pup_fully_vaccinated, :pup_location, :pup_personality, :owner_name, :picture)
    end
end
