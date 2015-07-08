class AddImageurlToPosts < ActiveRecord::Migration
  def up
  	add_column :posts, :img_url, :string 
  end

  def down 
  	remove_column :posts, :img_url
  end
end
