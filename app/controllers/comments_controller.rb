class CommentsController < ApplicationController

	def index
	end 

	def show 
	end 

	def create 
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		@comment = comment.save!
		redirect_to post_path(@post)
	end

	def new 
	end 

	private 

		def comment_params 
			params.require(comment).permit(:body)
		end 
end
