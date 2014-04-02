require 'test_helper'



	describe "valid user" do
		before do 
			@user = User.new(first_name:"John",
			last_name: "Smith",
			username: "jsmith",
			password: "jsmith2014",
			email: "jsmith@email.com")
		end
		it "creates user successfully with valid params" do
			@user.valid?.must_equal true
		end
	end
	describe "invalid user" do
		before do
		  @user = User.new(first_name: "John",
			last_name: "Smith",
			username: "jsmith",
			password: "jsmith2014",
			email: "jsmith@email")
		end
		it "is invalid with an invalid email" do
		  @user.valid?.must_equal false
		end
	end

