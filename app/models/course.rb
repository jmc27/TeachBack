class Course < ActiveRecord::Base
	has_many :users, through: :course_enrollments
	has_many :course_enrollments
	has_many :lectures

	#validates :user_id, :title, :course_code, :teacher_pin, :student_pin,
	#			:ta_pin, presence: true
	validates :instructor_pin, :student_pin, uniqueness: true
end