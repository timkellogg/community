class AddUpvotesAndDownvotesToPosts < ActiveRecord::Migration
  def up

  	add_column :posts, :upvotes, :integer
  	add_column :posts, :downvotes, :integer 
  	
  end

  def down 
  	remove_column :posts, :upvotes 
  	remove_column :posts, :downvotes
  end
end
