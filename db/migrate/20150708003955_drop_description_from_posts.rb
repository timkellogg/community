class DropDescriptionFromPosts < ActiveRecord::Migration
  def up
  	remove_column :posts, :description 
  end

  def down
  	add_column :posts, :descriptionr
  end
end
