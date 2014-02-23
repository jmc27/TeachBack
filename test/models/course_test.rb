require 'test_helper'

class CourseTest < ActiveSupport::TestCase

 #First test to ensure all necessary attributes are filled
 test "certain course attributes must not be empty" do 	
 	course = Course.new
 	assert course.invalid?
 	assert course.errors[:user_id].any?
 	assert course.errors[:title].any?
 	assert course.errors[:course_code].any?
 	assert course.errors[:teacher_pin].any?
 	assert course.errors[:student_pin].any?
 	assert course.errors[:ta_pin].any?
 end

 #Test the uniqueness of necessary attributes
 test "certain course attributes must be unique" do
 	c1 = Course.all.first
 	course = Course.new(user_id: -1, title: "title", course_code: "-1", teacher_pin: "-1",
 						student_pin: "-1", ta_pin: c1.ta_pin)
 	assert course.invalid?
 	course.ta_pin = "-1"
 	course.student_pin = c1.student_pin
 	assert course.invalid?
 	course.student_pin = "-1"
 	course.teacher_pin = c1.teacher_pin
 	assert course.invalid?
 	course.teacher_pin = "-1"
 	course.course_code = c1.course_code
 	assert course.invalid?
 	course.course_code = "-1"
 	assert course.valid?
 end

end
