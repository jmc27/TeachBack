require 'test_helper'

class LatestFeedbackTest < ActiveSupport::TestCase
 
 	#Test to make sure necessary attributes are present
  test "certain latest_feedback attributes must not be empty" do 	
 	latestfback = LatestFeedback.new
 	assert latestfback.invalid?
 	assert latestfback.errors[:user_id].any?
 	assert latestfback.errors[:lecture_id].any?
 end

end
