class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create 
		@post = Post.new(post_params)
		if @post.save
			redirect_to authenticated_root_path
		else
			render 'new'
		end
	end

	private

	def post_params
		params.require(:post).permit(:message).merge(user_id: current_user.id)
	end
end
