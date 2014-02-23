class CourseEnrollment < ActiveRecord::Base
	belongs_to :user
	belongs_to :course

	validates :user_id, :course_id, :enrollment_type, presence: true
end
