class FriendshipsController < ApplicationController
    def index 
        friendships = Friendship.all
        render json: FriendshipSerializer.new(friendships)
    end
end
