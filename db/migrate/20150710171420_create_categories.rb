class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :subscribers
      t.integer :mod
      t.text :description
      t.integer :post_id 
      t.timestamps null: false

    end

    add_index "categories", ["post_id"], name: "index_categories_on_post_id"
  end
end

