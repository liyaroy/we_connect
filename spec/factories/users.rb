FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com"}
    sequence(:username) { |n| "test-#{n.to_s.rjust(3, "0")}" }
    sequence(:first_name) { |n| "test-#{n.to_s.rjust(3, "0")}"}
    sequence(:last_name) { |n| "test-#{n.to_s.rjust(3, "0")}"}
    dob  { 21.years.ago }
		password { "123456" }
  end
end
