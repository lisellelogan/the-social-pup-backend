class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :pup_name
      t.integer :pup_age
      t.string :pup_breed
      t.boolean :pup_fully_vaccinated, default: false
      t.string :pup_location
      t.string :pup_personality
      t.string :owner_name

      t.timestamps
    end
  end
end
