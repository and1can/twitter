class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change #anything inside this method, is translated to SQL code 
  	#allows forward and roll back
  	  add_column :users, :username, :string #add a new column to table "users", called "username" of type string
  	  add_index :users, :username, unique: true #index usersnames for quick lookup, second ensure usernames are always unique
  end
end
