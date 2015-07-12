class AddCategorizations < ActiveRecord::Migration
  def up
  	create_table :categorizations do |t|
  		t.integer :category_id
  		t.integer :post_id 

  		t.timestamps
  	end
  end

  def down 
  	drop_table :categorizations
  end
end

