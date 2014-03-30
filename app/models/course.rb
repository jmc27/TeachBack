class Course < ActiveRecord::Base
	has_many :users, through: :course_enrollments
	has_many :course_enrollments, dependent: :destroy
	has_many :lectures, dependent: :destroy

	validates :title, :code, presence: true
	validates :instructor_pin, :student_pin, uniqueness: true
end