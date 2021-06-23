class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users, include: [:friendships])
    end
end
