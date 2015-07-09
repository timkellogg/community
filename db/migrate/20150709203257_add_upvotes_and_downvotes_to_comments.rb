class AddUpvotesAndDownvotesToComments < ActiveRecord::Migration
  def up
  	add_column :comments, :upvotes, :integer
  	add_column :comments, :downvotes, :integer
  end

  def down 
  	remove_column :comments, :upvotes, :integer
  	remove_column :comments, :downvotes, :integer
  end
end


