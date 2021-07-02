class FriendshipsController < ApplicationController
    def index 
        friendships = Friendship.all
        render json: FriendshipSerializer.new(friendships)
    end

    def create 
        friendship = Friendship.create_mutual_friendship(params[:user_id], params[:friend_id])
    end
end
