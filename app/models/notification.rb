class Notification < ActiveRecord::Base
	belongs_to :course
	belongs_to :lecture
	belongs_to :user

	validates :course_id, :user_id, :message, presence: true
end
