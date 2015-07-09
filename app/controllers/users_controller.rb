class UsersController < ApplicationController


	def show 
		@user = User.find(params[:id])
	end

	def update
	end

	def destroy
	end

	def show_all_posts
		@user = User.find(params[:id])
		@posts = @user.posts 
	end

	
end
