class FollowsController < ApplicationController
	# before_action :autheticate_user!
	respond_to :js

	def create
		@user = User.find_by(id: params[:user_id])
		current_user.follow(@user)
	end

	def destroy
		@user = User.find(params[:user_id])
		current_user.stop_following(@user)
	end

	def friends
		friend_ids = current_user.followers.map(&:id)
		@users = User.where.not(id: friend_ids)
		render 'index' 
	end
end
