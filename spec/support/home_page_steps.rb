module HomePageSteps
	def visit_home_page
		visit("/")
	end

	def i_should_see_all_posts_i_made
		expect(page).to have_content("Posts")
	end

	def visit_create_post_form
		visit("/posts/new")
		expect(page).to have_content("Create new Post")
	end

	# def fill_in_details_with_message("Hello World")

	# end

	# def i_should_see_creted_post_in_list_with_message("Hello World")

	# end
end
