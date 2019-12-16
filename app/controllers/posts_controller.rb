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
			render root_path
		else
			redirect_to 'new_posts_path'
		end
	end

	private

	def post_params
		params.require(:post).permit(:message)
	end
end
