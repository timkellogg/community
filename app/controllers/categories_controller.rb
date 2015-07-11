class CategoriesController < ApplicationController

	# thread homepages 
	def show
		@category = Category.find(params[:id])
		@posts = @category.posts 
	end 

	
	

end
