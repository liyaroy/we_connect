require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "Sessons" do
    it "signs in and out" do
    	user = User.create(username: 'test', email: 'testuser@test.com', password: 'password', password_confirmation: 'password')
    	sign_in user
    	get root_path
    	expect(response).to render_template(:index)
    end
  end
end
