class LatestFeedback < ActiveRecord::Base
	belongs_to :user
	belongs_to :lecture

	validates :user_id, :lecture_id, presence: true
end
