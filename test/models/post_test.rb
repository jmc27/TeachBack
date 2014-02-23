require 'test_helper'

class PostTest < ActiveSupport::TestCase
   
	#Ensure that a post has a user, lecture, and content
   test "post attributes must not be empty" do 	
 	post = Post.new
 	assert post.invalid?
 	assert post.errors[:post].any?
 	assert post.errors[:lecture_id].any?
 	assert post.errors[:user_id].any?
 end
end
