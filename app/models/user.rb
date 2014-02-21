class User < ActiveRecord::Base
	has_many :created_courses, :class_name => "Course"
	has_many :courses, through: :course_enrollment
	has_many :quiz_answers
	has_many :posts
	has_many :post_responses
	has_many :feedbacks
	has_many :latest_feedbacks
	has_many :notes
	has_many :lectures, through: :attendance
	has_many :notifications
end
