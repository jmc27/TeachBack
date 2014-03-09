class Notification < ActiveRecord::Base
	belongs_to :course, :lecture, :user

	validates :course_id, :user_id, :message, presence: true
end
