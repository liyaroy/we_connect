require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do 
  	subject { User.new(username: 'username1', email: 'username1@test.com', password: '123password')}
  	it { should validate_presence_of(:username)}
  	it { should validate_presence_of(:email) }
  	it { should validate_presence_of(:password) }
  	it { should validate_uniqueness_of(:username) }
  	it { should validate_uniqueness_of(:email).case_insensitive }
  	it { should validate_presence_of(:first_name) }
  	it { should validate_presence_of(:last_name) }
  	it { should validate_presence_of(:dob) }
  end
end
