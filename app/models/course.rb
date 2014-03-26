class Course < ActiveRecord::Base
	has_many :users, through: :course_enrollments
	has_many :course_enrollments
	has_many :lectures

	validates :title, :code, presence: true
	validates :instructor_pin, :student_pin, uniqueness: true
end