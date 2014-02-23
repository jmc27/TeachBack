require 'test_helper'

class NotificationTest < ActiveSupport::TestCase

	#Test for necessary attributes
 test "notification course/user id and message must not be empty" do 	
 	notification = Notification.new
 	assert notification.invalid?
 	assert notification.errors[:course_id].any?
 	assert notification.errors[:user_id].any?
 	assert notification.errors[:message].any?
 end
end
