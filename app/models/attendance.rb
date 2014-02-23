class Attendance < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :user

	validates :lecture_id, :user_id, :present, :excused, presence: true
end
