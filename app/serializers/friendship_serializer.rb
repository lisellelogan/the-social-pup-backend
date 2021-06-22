class FriendshipSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  belongs_to :friend, class_name: "User" 
end
