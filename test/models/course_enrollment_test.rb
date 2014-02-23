require 'test_helper'

class CourseEnrollmentTest < ActiveSupport::TestCase
 
 #Test that necessary attributes are non empty
  test "certain enrollment attributes must not be empty" do 	
 	cenroll = CourseEnrollment.new
 	assert cenroll.invalid?
 	assert cenroll.errors[:user_id].any?
 	assert cenroll.errors[:course_id].any?
 	assert cenroll.errors[:enrollment_type].any?
 end
end
