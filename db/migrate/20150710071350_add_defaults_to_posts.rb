class AddDefaultsToPosts < ActiveRecord::Migration

	def up
		change_column :posts, :upvotes, :integer, default: 0
		change_column :posts, :downvotes, :integer, default: 0 
	end

	def down 
		change_column :posts, :upvotes, :integer
		change_column :posts, :downvotes, :integer
	end
end
