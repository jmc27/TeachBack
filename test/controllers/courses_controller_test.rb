require 'test_helper'

describe "valid course" do
	before do
		@course = Course.new(title: "Intro to CS",
							code: "COSI 101",
							instructor_pin: 1231453,
							student_pin: 4349493,
							lecture_days: "M,W,F",
							lecture_start_time: "10:00",
							lecture_end_time: "10:50",
							start_date: Date.new(2014,1,14),
							end_date: Date.new(2014,5,11),
							semester: "Spring 2014",
							school: "Harvard University",
							location: "Volen 101",
							instructor: "Some teacher")
	end

	it "tests valid course creation" do
		@course.valid?.must_equal true
	end
end

describe "pin method" do
	before do
		@course = Course.new(title: "Intro to CS",
							code: "COSI 101",
							lecture_days: "M,W,F",
							lecture_start_time: "10:00",
							lecture_end_time: "10:50",
							start_date: Date.new(2014,1,14),
							end_date: Date.new(2014,5,11),
							semester: "Spring 2014",
							school: "Harvard University",
							location: "Volen 101",
							instructor: "Teacher something")
		@course.instructor_pin = @course.newPINS
		@course.student_pin = @course.newPINS
	end
	it "test the newPINS method" do
		@course.valid?.must_equal true
	end
end
