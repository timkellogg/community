class DropPostIdFromCategories < ActiveRecord::Migration
  def up
  	remove_column :categories, :post_id 
  end

	def down
		add_column :categories, :post_id, :integer 
 	end   
end
