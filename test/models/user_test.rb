require 'test_helper'

class UserTest < ActiveSupport::TestCase
 
 #First test: ensure that all necessary fields are filled

 test "certain user attributes must not be empty" do 	
 	user = User.new
 	assert user.invalid?
 	assert user.errors[:firstname].any?
 	assert user.errors[:lastname].any?
 	assert user.errors[:username].any?
 	assert user.errors[:email].any?
 end

 #Now test to make sure that the username and email are unique

 test "username and email must be unique" do
 	u1 = User.all.first
 	user = User.new(firstname: "name", lastname: "name", username: u1.username, email: "email")
 	assert user.invalid?
 	user.username = "new"
 	user.email = u1.email
 	assert user.invalid?
 	user.email = "new"
 	assert user.valid?
 end
end
