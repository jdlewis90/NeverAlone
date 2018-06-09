class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :avatar
      t.string :intro
      t.string :location
      t.string :dob
      t.string :privacy
      t.string :search

      t.timestamps
    end
  end
end
