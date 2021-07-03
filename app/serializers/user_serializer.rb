class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :friendships
  
  def friends 
    object.friends
  end

  attributes :id,:email, :pup_name, :pup_age, :pup_breed, :pup_fully_vaccinated, :pup_location, :pup_personality, :picture, :owner_name, :friends
end
