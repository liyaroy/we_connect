class FollowsController < ApplicationController
	# before_action :autheticate_user!
	respond_to :js

	def create
		@user = User.find_by(id: params[:user_id].to_i)
		current_user.follow(@user)
		redirect_to authenticated_root_path
	end

	def destroy
		@user = User.find(params[:user_id])
		current_user.stop_following(@user)
	end

	def find_friends
		friend_ids = current_user.all_following.map(&:id)
		friend_ids << current_user.id
		@users = User.where.not(id: friend_ids)
		respond_to do |format|
	    # format.html
	    format.js
		end
	end

	def friends
		@friends = current_user.all_following
		respond_to do |format|
			format.js
		end
	end
end
