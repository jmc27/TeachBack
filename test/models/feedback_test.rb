require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  
  #Test for necessary Feedback attributes
  test "certain feedback attributes must not be empty" do 	
 	fback = Feedback.new
 	assert fback.invalid?
 	assert fback.errors[:lecture_id].any?
 	assert fback.errors[:course_id].any?
 	assert fback.errors[:user_id].any?
 end
end
