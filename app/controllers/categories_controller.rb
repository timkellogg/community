class CategoriesController < ApplicationController

	# thread homepages 
	def show
		@category = Category.find(params[:id])
		@posts = @category.posts.paginate(:page => params[:page]).order("rank DESC")
	end 
end 
