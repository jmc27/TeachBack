class Feedback < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :course
	belongs_to :user

	validates :lecture_id, :course_id, :user_id, presence: true
end
