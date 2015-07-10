class AddDefaultsToComments < ActiveRecord::Migration
  def up
		change_column :comments, :upvotes, :integer, default: 0
		change_column :comments, :downvotes, :integer, default: 0
  end

  def down 
		change_column :comments, :upvotes, :integer
		change_column :comments, :downvotes, :integer
  end
end
