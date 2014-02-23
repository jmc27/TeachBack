class Lecture < ActiveRecord::Base
	belongs_to :course
	has_many :quizzes
	has_many :posts
	has_many :feedbacks
	has_many :latest_feedbacks
	has_many :notes
	has_many :users, through: :attendance
	has_many :notifications

	validates :title, :course_id, presence: true
end
