class CategoriesController < ApplicationController

	# thread homepages 
	def show
		@category = Category.find(params[:id])
    @posts = Post.paginate(:page => params[:page]).order("rank DESC")
	end 

end 
