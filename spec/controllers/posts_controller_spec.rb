require 'rails_helper'

RSpec.describe PostsController, type: :controller do
	describe "GET new" do
		it "renders the new post form" do
			get :new
			expect(response).to render_template('new')
		end
	end 

	describe "POST create" do
		it "should create a new post" do
			user = FactoryBot.create(:user)
			login_as(user)
			visit new_posts_path
			page.fill_in placeholder: 'message', with: 'Hello World'

			expect { click_button "Save" }.to change(Post).count.by(1)
		end
	end

end
