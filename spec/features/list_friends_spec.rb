require 'rails_helper'

require 'support/home_page_steps'

RSpec.describe 'list friends', type: :feature do

	include HomePageSteps
	it 'should list all users' do
		user = FactoryBot.create(:user)
		user2 = FactoryBot.create(:user)
		login_as(user)
		visit_home_page
		click_on("Find Friends")

		it 'should list users', js: true do 
			visits_find_friends(user2)
		end
		# it_should_list_all_users_who_are_not_friends
	end
end
