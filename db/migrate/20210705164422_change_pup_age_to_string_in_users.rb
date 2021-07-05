class ChangePupAgeToStringInUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :pup_age, :string
  end
end
