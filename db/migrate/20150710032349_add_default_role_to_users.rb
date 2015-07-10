class AddDefaultRoleToUsers < ActiveRecord::Migration
  def up
  	change_column :users, :role, :string, default: "user" 
  end

  def down 
  	change_column :users, :role, :string 
  end
end
