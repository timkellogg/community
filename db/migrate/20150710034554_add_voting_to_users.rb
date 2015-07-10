class AddVotingToUsers < ActiveRecord::Migration
  def up
  	add_column :users, :post_downvotes, :integer, default: 0
  	add_column :users, :post_upvotes, :integer, default: 0
  	add_column :users, :comment_downvotes, :integer, default: 0
  	add_column :users, :comment_upvotes, :integer, default: 0
  end

  def down
  	remove_column :users, :post_downvotes
  	remove_column :users, :post_upvotes
  	remove_column :users, :comment_downvotes
  	remove_column :users, :comment_upvotes 
  end
end
