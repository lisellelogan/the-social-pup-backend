class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :friendships
  # has_many :friends
  def friends 
    object.friends
  end

  attributes :email, :pup_name, :pup_age, :pup_breed, :pup_fully_vaccinated, :pup_location, :pup_personality, :picture, :owner_name, :friends
end
