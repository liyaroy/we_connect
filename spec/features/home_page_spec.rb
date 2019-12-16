require 'rails_helper'
require 'support/home_page_steps'
RSpec.describe 'Home Page', type: :feature do
	
	include HomePageSteps

	it 'should show all posts' do
		visit_home_page
		i_should_see_all_posts_i_made
	end

	
end
