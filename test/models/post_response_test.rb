require 'test_helper'

class PostResponseTest < ActiveSupport::TestCase

 #Test to see if a post_response has a user/post id and response
  test "certain post_response attributes must not be empty" do 	
 	presponse = PostResponse.new
 	assert presponse.invalid?
 	assert presponse.errors[:response].any?
 	assert presponse.errors[:post_id].any?
 	assert presponse.errors[:user_id].any?
 end
end
