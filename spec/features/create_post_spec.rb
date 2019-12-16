require 'rails_helper'
require 'support/home_page_steps'

RSpec.describe Post, type: "feature" do
	include HomePageSteps

	it 'creates a new post' do
		visit_create_post_form
		# fill_in_details_with_message("Hello World")
		# i_should_see_creted_post_in_list_with_message("Hello World")
	end
end
