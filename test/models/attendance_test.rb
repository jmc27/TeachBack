require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase

	#Test to make sure attendance attributes are not empty
	test "attendance attributes must not be empty" do
	attendance = Attendance.new
 	assert attendance.invalid?
 	assert attendance.errors[:lecture_id].any?
 	assert attendance.errors[:user_id].any?
 	assert attendance.errors[:present].any?
 	assert attendance.errors[:excused].any?
 end

end
