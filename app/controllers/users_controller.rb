class UsersController < ApplicationController
	before_filter :require_permission, only: [:edit, :destroy]

	def index 
		authorize! :index, User 
		@users = User.all 
	end

	def show 
		@user = User.find(params[:id])
		@posts = @user.posts.last(5)
		@comments = @user.comments.last(5)
	end

	def update
	end

	def edit 
		authorize! :index, User
	end 

	def destroy
	end

	private 

		def require_permission 
			if current_user.id != @user.id 
				redirect_to root_url 
				flash[:danger] = "You don't have permission to do that."
			end 
		end

	
end
