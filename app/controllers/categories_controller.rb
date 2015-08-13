class CategoriesController < ApplicationController
	def show
		if params[:id]
			@category = Category.find(params[:id])
			@posts = @category.posts.order("rank DESC")
			@posts = @posts.paginate(:page => params[:page], :per_page => 25)
		else
			@category = Category.find(1)
			@posts = @category.posts.order("rank DESC")
			@posts = @posts.paginate(:page => params[:page], :per_page => 25)
		end
	end
end
