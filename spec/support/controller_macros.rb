module ControllerMacros
	def login_user
		before(:each) do
			@request.env['devise.mappings'] = Devise.mappings[:user]
			user = FactoryGirl.create(:user)
			sign_in_user
		end
	end
end
