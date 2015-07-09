class UsersController < ApplicationController


	def show 
		@user = User.find(params[:id])
		@posts = @user.posts.last(5)
		@comments = @user.comments.last(5)
	end

	def update
	end

	def destroy
	end

	
end
