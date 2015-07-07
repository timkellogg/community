class AddRankToPosts < ActiveRecord::Migration
  def up
  	add_column :posts, :rank, :integer 
  end

  def down 
  	remove_column :posts, :rank, :integer
  end
end
