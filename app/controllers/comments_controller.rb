class CommentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

	def index
	end 

	def show 
	end 

	def create 
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		@comment.user_id = current_user.id 
		if @comment.save!
			redirect_to post_path(@post)
		else 

		end
	end

	def new 
	end 

	private 

		def comment_params 
			params.require(:comment).permit(:body)
		end 
end
