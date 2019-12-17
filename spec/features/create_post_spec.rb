require 'rails_helper'
require 'support/home_page_steps'

RSpec.describe Post, type: "feature" do
	include HomePageSteps

	it 'creates a new post' do
		visit_create_post_form
		# fill_in_details_with_message("Hello World")
		# i_should_see_creted_post_in_list_with_message("Hello World")
		user = FactoryBot.create(:user)
		login_as(user)
		visit new_posts_path
		fill_in "Message", with: "Hello World"
		click_on("Save")
	# 		page.fill_in placeholder: 'message', with: 'Hello World'

	# 		expect { click_button "Save" }.to change(Post).count.by(1)
	end
end
