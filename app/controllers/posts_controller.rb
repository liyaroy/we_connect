class PostsController < ApplicationController
	def index
		friends = current_user.all_follows.map(&:id)
		@posts = Post.where(user_id: friends)
	end

	def new
		@post = Post.new
	end

	def create 
		@post = Post.new(post_params)
		@post.post_images.build(image: post_image_params[:image])
		if @post.save
			redirect_to authenticated_root_path
		else
			render 'new'
		end
	end

	def destroy
		@post = Post.find(params[:format])
		@post.destroy
		redirect_to authenticated_root_path
	end

	private

	def post_params
		params.require(:post).permit(:message).merge(user_id: current_user.id)
	end

	def post_image_params
		params.require(:post).permit(:image)
	end
end
