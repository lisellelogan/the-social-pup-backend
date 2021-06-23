class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :friendships
  # has_many :friends, through: :friendships, source: :friend
  has_many :friends
  attributes :email, :pup_name, :pup_age, :pup_breed, :pup_fully_vaccinated, :pup_location, :pup_personality, :owner_name
end
