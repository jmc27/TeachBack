class Course < ActiveRecord::Base
	belongs_to :owner_user, :class_name => "User"
	has_many :users, through: :course_enrollment
	has_many :lectures
	has_many :quizzes
	has_many :feedbacks
	has_many :notifications

	validates :user_id, :title, :course_code, :teacher_pin, :student_pin,
				:ta_pin, presence: true
	validates :course_code, :teacher_pin, :student_pin,
				:ta_pin, uniqueness: true
end
